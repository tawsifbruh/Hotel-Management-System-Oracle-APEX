# 🏨 Hotel Booking System (Hotel EWU)

An end-to-end Web-based Hotel Management & Booking System developed using **Oracle APEX** and **Oracle Database (PL/SQL)** as a course project for **CSE302: Database Systems** at **East West University**.

---

## 📌 Project Live Access & Credentials

- **Live Demo URL:** [Hotel EWU Web App](https://oracleapex.com/ords/r/365/hotel-ewu/welcome)
- **Workspace:** `365`
- **Admin Username:** `2024-3-60-365@std.ewubd.edu`
- **Admin Password:** `#JetuArghoTawsif123`

---

## ✨ Key Features & Highlights

* **Public & Login-Free Customer Portal:** A dedicated landing page (`Book A Room`) allowing guests to check live room availability, select dates, and complete room bookings seamlessly without needing an account.
* **Double-Booking Protection (Database Trigger):** Integrated PL/SQL `BEFORE INSERT OR UPDATE` trigger (`trg_prevent_double_booking`) to prevent overlapping date reservations for the same room.
* **Automatic Guest Registration:** On-the-fly PL/SQL page process that looks up returning guests via phone number or creates new guest profiles instantly upon booking.
* **Role-Based Authorization & Security:** Implemented `Must Not Be Public User` authorization schemes to separate public customers from backend administrative users.
* **Interactive Admin Dashboard:** Built-in charts and analytics for:
  - Monthly Revenue Collection
  - Most Booked Room Types
  - Live Available Rooms by Category
  - Average Stay Duration by Room Type
* **Master-Detail Interface:** Managed guest records linked dynamically with their booking history.

---

## 🛠️ Tech Stack & Database Architecture

* **Database Engine:** Oracle Database (SQL, PL/SQL)
* **Web Framework:** Oracle APEX (Application Express)
* **Authentication:** APEX Built-in Application Express Authentication

### Database Schema / Entities:
1. **`ROOMS`**: (`room_id` PK, `room_number`, `room_type`, `price`, `status`)
2. **`GUESTS`**: (`guest_id` PK, `name`, `phone`)
3. **`BOOKINGS`**: (`booking_id` PK, `guest_id` FK, `room_id` FK, `check_in_date`, `check_out_date`, `booking_status`)
4. **`PAYMENTS`**: (`payment_id` PK, `booking_id` FK, `amount`, `payment_date`, `payment_method`)

---

## ⚡ Database Logic Highlights

### Double-Booking Prevention Trigger:
```sql
CREATE OR REPLACE TRIGGER trg_prevent_double_booking
BEFORE INSERT OR UPDATE ON bookings
FOR EACH ROW
DECLARE
    v_count NUMBER;
BEGIN
    SELECT COUNT(*) INTO v_count
    FROM bookings b
    WHERE b.room_id = :NEW.room_id
      AND b.booking_status <> 'Cancelled'
      AND b.booking_id <> NVL(:NEW.booking_id, -1)
      AND (:NEW.check_in_date < b.check_out_date AND :NEW.check_out_date > b.check_in_date);

    IF v_count > 0 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Room is already booked for the selected dates.');
    END IF;
END;
/