prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.03.30'
,p_release=>'26.1.3'
,p_default_workspace_id=>31651185048021130013
,p_default_application_id=>52118
,p_default_id_offset=>0
,p_default_owner=>'WKSP_365'
);
end;
/
 
prompt APPLICATION 52118 - Hotel EWU
--
-- Application Export:
--   Application:     52118
--   Name:            Hotel EWU
--   Date and Time:   15:46 Monday September 14, 2026
--   Exported By:     2024-3-60-365@STD.EWUBD.EDU
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     16
--       Items:                   38
--       Processes:               24
--       Regions:                 34
--       Buttons:                 34
--       Dynamic Actions:          4
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  3
--         Breadcrumbs:            1
--           Entries:             10
--       Security:
--         Authentication:         1
--         Authorization:          2
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   4
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.1.3
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_365')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Hotel EWU')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'HOTEL-EWU')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'E06AD76D4369D74BB6A0A92A7DD28124C92AAF4AC0DDFDA48D10F09D440D24C5'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(31669279748982690226)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Hotel EWU'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Hotel EWU'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260827121147Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461278073352
,p_version_scn=>'15817028026084'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:11:&SESSION.'
,p_login_url=>'f?p=&APP_ID.:9999:&SESSION.'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(31669280631116690228)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2469215554099805162
,p_nav_list_template_options=>'#DEFAULT#:js-defaultCollapsed:js-navCollapsed--hidden:t-TreeNav--styleA'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(31669281425407690233)
,p_nav_bar_list_template_id=>2849019392706229583
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669275318173690218)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669275686386690219)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669275922719690219)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669276234869690220)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669276572432690220)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669276876853690221)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669277138775690221)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669277469825690222)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669277766236690222)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669278081146690223)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669278366728690224)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG')).to_clob
,p_version_scn=>'SH256:tNGqNT-VaoKqWOwKbAdEqb6C0QO-GMcYRZJLXjScHMo'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669278669071690224)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669278936040690224)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(31669279269045690225)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31669281425407690233)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31669399113946691769)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260825073408Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31669399791700691770)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(31669399113946691769)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260825073408Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31669400276868691771)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(31669399113946691769)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260825073408Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31669280631116690228)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:p7DKvHC3dRBwVteDZjBTuJTUeyA7c5UpCGTmj_GLGu0'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260827071019Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31917087565845198665)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'Book A Room'
,p_static_id=>'book-a-room'
,p_list_item_link_target=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'15'
,p_created_on=>wwv_flow_imp.dz('20260826080341Z')
,p_updated_on=>wwv_flow_imp.dz('20260826080341Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31669327684039690909)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Bookings'
,p_static_id=>'bookings'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bookmark'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260827070734Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31678289768487047967)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Dashboard'
,p_static_id=>'dashboard'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-dashboard'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
,p_created_on=>wwv_flow_imp.dz('20260825083330Z')
,p_updated_on=>wwv_flow_imp.dz('20260827070820Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31885825536013518777)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Guest Booking'
,p_static_id=>'guest-booking'
,p_list_item_link_target=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-header-sidebar-left'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'13,14'
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260827070838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31669312672909690510)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Guests'
,p_static_id=>'guests'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260825073355Z')
,p_updated_on=>wwv_flow_imp.dz('20260827070716Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31669294484444690251)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260827071019Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31669345675493691323)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Payments'
,p_static_id=>'payments'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-money'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260827070754Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31669295822492690255)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Rooms'
,p_static_id=>'rooms'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-meeting-room'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260825073353Z')
,p_updated_on=>wwv_flow_imp.dz('20260827070649Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(32170679356874546147)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'Welcome'
,p_static_id=>'welcome'
,p_list_item_link_target=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-archive'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'11'
,p_created_on=>wwv_flow_imp.dz('20260827062311Z')
,p_updated_on=>wwv_flow_imp.dz('20260827062311Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/navigation/lists/page_navigation
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(31669395311104691763)
,p_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_version_scn=>'SH256:BBSeE2QuwrXFydk-mFfC9hf7wllwHJ_AW9STa7xvf8k'
,p_created_on=>wwv_flow_imp.dz('20260825073408Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31669396894296691766)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Bookings'
,p_static_id=>'bookings'
,p_list_item_link_target=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-bookmark'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260825073408Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31669396318811691765)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Guests'
,p_static_id=>'guests'
,p_list_item_link_target=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260825073408Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31669397301477691766)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>'Payments'
,p_static_id=>'payments'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-money'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260825073408Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(31669395848700691765)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Rooms'
,p_static_id=>'rooms'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-meeting-room'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20260825073408Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800000B7F494441547801EC9D6B6C14D71580CF9DF51AD60E18088457D3067B178369B061210FA0098902446A83D4FC88E88FC60F8A22A2B44AD54691DA1FA551ABFC4A';
wwv_flow_imp.g_varchar2_table(2) := '137E344AAA804D953F692A250D4A550A423455083480ED948687793805135E06F3B4BDAFDB73D68B0AC824ECBD7766E7CE9CD5DC1DEFB2F7DE73BEF3ED9D9D315A3BC03726A0418005D280C75D015820B6408B000BA4858F3BB340EC80160116480B1F77';
wwv_flow_imp.g_varchar2_table(3) := '6681D8012D02CA0269CDCA9D034380050A4C294B93080B541AEE819995050A4C294B93080B541AEE819995050A4C294B93080B541AEE8199D57B816E035DEDBAFDA3E6B71E9D946CEBAA99B3EE407DC3FA430B1A5A0F2E99DDDAF544181AE54A3953EEC4';
wwv_flow_imp.g_varchar2_table(4) := '80581093DB40E7F94B4A2B909422D97A6006C26A6C68EB7ABDA1B56B17B654CC895C4C43E6CBAC8443D2713A40C88F01C4DF1D800FC2D02857CA99722706C48298101B6CC4E8F7C48CD801328412DEB01EDECD3E677DD784396D5DCB11C26F1BDA0E6DC6';
wwv_flow_imp.g_varchar2_table(5) := '763E0BCE3E84D50612566324496C516CBC0D4F80D810A3678919B12386D83637AC3FF81B5A9D67BDF59F71C37775E759EF04C2778A04582025BC88A9FC02DF398FE1BE0A1B6F7A04AAF22C85F82516F3C53227BA001F0BBD216FBF37CE79FB2F567965F2';
wwv_flow_imp.g_varchar2_table(6) := 'CD5DD186D643ABF05DB21F04BC0F281136DEDC21B05008B1113F0EECC3957E25B177679AFF8FEAAA40F51B0E4CCD96577D0220FF80534EC7C69B2704442DAEF46F6547546DA78F0D6E4EE99A4018789DC8393B31783A66E38E37CF09489827057C52DFD6';
wwv_flow_imp.g_varchar2_table(7) := '35CBADB95D11A87EDDE14518F8760C7A2A36431B0FA348A04648F818DFD00F2BF6FFCA6EC605C240EB8493DB84B3F2076484E093AD0ADFD07F756325322A50F2CD131518E8BB08AD021B6FFE2250812BD13B542393611915285B7EF9750CAE0E1B6FFE24';
wwv_flow_imp.g_varchar2_table(8) := '30AB502363D11913A8A1F56013806804BEF99C80681CAA9599308D08F4E09F8EC500C4EF806F961010AF983A94191168E04A3FAD3C632DA1C761028CCB955F7EDA04087D81A414F82B8AE74D04E3D2183CEC3004B06C3F31F12B0F6D81E6B61D5E06206A';
wwv_flow_imp.g_varchar2_table(9) := '816F7611103073A8767A616B0B2441F2EAA3578392F536513B2D8116B71E1D290196948C004FAC45806A377402A43E8C96407D907900A7D61A03FBF3563A024EFF9581FB75A6D72ABE00208174E6E7BE2526A05B432D81700964814A2C80EEF4BA355417';
wwv_flow_imp.g_varchar2_table(10) := '08CF0331F845D802BB852431AD454059A0F96DDD1311F09DD878B39BC0C4FB361C57AEA3B2402991519ED46EDEC18B7E50F64F52CD4A59202173FC5F3654A9FBAC9F4E2D35047258209F89A01A8E90EAB554174888986AC0DCCF67041CA74C35226581B2';
wwv_flow_imp.g_varchar2_table(11) := 'C0873055E87EEB27A48CAAC6A42C9010115E816E45DDB2E7751603658140C35ACBF8063E5C9DC5405920296526F06439C1AF25A02CD0D78ECC2F08050116281465762F4916C83DB6A11899050A4599DD4B9205728FADC2C8F675B152A06CFF65C85C3C0B';
wwv_flow_imp.g_varchar2_table(12) := 'E9BED345B7CCC55EC8A5FAEDAB944F23B64B202961F0E451183CD50DA973278B9687844B9DFB12064E1C8681E307217BF5A24FCB624F58560994BE7006B2035760CC1D95707F5D0D3C3AB7AEE8F650FD0C9879CF54706416064FFF17D228943DE5F25FA4';
wwv_flow_imp.g_varchar2_table(13) := '8EFF42BA7544B9C1ABF97F5C786F1C125326C09471A38B6EDF9C300692F1BBE1BB0FCC863B6223218D87345A95F203F35DD104AC124866B3F904C756C6F27B9DBB51B111B074FE2CA84489E87351AAF784CE70A1ED6B9540A6AB54511E856528D1A88A18';
wwv_flow_imp.g_varchar2_table(14) := '642E9D83D4D9E3A6A708FC78760924CCD783245A3ABF0EF2125DEE1B9248E6CC4FE4EE88251BDD2E815CC2148B4661E9BC3A185D59011994A8BFA70B45EA513ACBA333BD625B062F49D0A50997D273755816A88037868733FA605D3D7522C84C1A453AEF';
wwv_flow_imp.g_varchar2_table(15) := '99407449822E4DD0250AC04B158590ACD8B140D795298287C80533A7C1930F25E1C15971A8C3D37D2FDAB4297741592492BF4491C6D5E8BA907CFFA35D02496F78D2E7A29AC9E3612E9EEE7BD116D655C3C27B13F9E47283765D25B74B205C21F2945DB8';
wwv_flow_imp.g_varchar2_table(16) := '1B48A761D7A163B079CF7ED8B4EB73CFDBDEA33DF9AC64369DDFDB726797402E513D7DE10A7CB0BD13F677F7C0A9737D70A6EFA2E7ADF7C22597B27377D8D00B74F2FC65D8BAE77348A533B0EA917AF8F0C74BE0A39F2D2B4973B7D4C38FAEFB6CA8053A';
wwv_flow_imp.g_varchar2_table(17) := '72B217B675EC830C5EE17EF6B106F8E1DC4930AA3CD4488AF6C94A5A6F6FD90126DAF6BD5D79799EFECEB761453D7D5704F0AD4802560A94AC9E0C26DA13C904BCFA8345F0A3FBF86FC280E2CD2E81F0349E4EC45EFDFE6C30D15E585C0DC929958AE8B8';
wwv_flow_imp.g_varchar2_table(18) := '1B11B04B208A989BAF08B040BE2A877DC1B040F6D5CC1F1117A260810A2078A746800552E3C6BD0A0458A00208DEA9116081D4B871AF020116A80082776A045820356EDCAB4080052A80E09D1A81E205529B877B0594000B14D0C27A95160BE415E980CE';
wwv_flow_imp.g_varchar2_table(19) := 'C30205B4B05EA5C50279453AA0F3B040012DAC5769B1405E910EE83C1E0A145082214F8B050AB900BAE9B340BA0443DE9F050AB900BAE9B340BA0443DEDF2A81442402120BD6DD97C2FB606D47CE0FE613124E24BFB7E5CE2A819CF2A12FD77C79D35ED8';
wwv_flow_imp.g_varchar2_table(20) := '7AA40F3E3B7535106DCBE13E78F96F7BF3CE3823ECFA53B4360894074B776555E34144CA60DFF133B0E6BD9DF0DCDBFF0C447BE9FD9D70E0C459106551281B7D27A56A4DB34A205ADE6377CF801113BF05E5E3264174CC5D8168940BE514FB462D508ED6';
wwv_flow_imp.g_varchar2_table(21) := 'D883815A2510C69BDF22B151F84E1D1F0879E84D50367A3C504EF9E42CBBB35220CB18073A5C1628D0E5753F3916C87DC6819E81050A7479DD4F2ED002B98F8F676081D8012D02EA020939F4C7BBB4A6E7CE7E20206556F9DBCD95058A80C302F9A1FA06';
wwv_flow_imp.g_varchar2_table(22) := '62D0A9A5A33ABF9452D95AD539B99F3B04746AA92E90C8F10AE44E3D3D1F556AD45243203E84795E6997269442BD96CA02E572013E84B95428BF0EAB534B6581468A281FC2FC6A449171E9D45259A05CAAB757020C14192BBFDC6704A886544BD5B09405';
wwv_flow_imp.g_varchar2_table(23) := 'DAFDCCBCB400D8A93A31F7F30701AA21D552351A65810A136E2BEC79672F01AD1AB240F616DE54E4A513680C94EDA063A8A94C781C6F0950EDA8863AB36AAD40DB9AA70DE0007FD10920587DEDCA866A4735D4891AC7D0E90E801FC25E03BE5949C044ED';
wwv_flow_imp.g_varchar2_table(24) := 'B405DAD39CD881F4F86C0C2158B6ED2CD44E2B6C6D8168760182572102615113866A6644A0AA2F8EFD198F65C72DE217F6507BF2353340C18840DBD63C92811C3C67201E1EC203023980D5F99A1998CB88401447474B02CFC6C45AFA999B9F0988B59F35';
wwv_flow_imp.g_varchar2_table(25) := '27369A8AD09840145024D5F70280FC947EE6561401AF5EBC6DA846E6A6332AD0D0EF54B24F61787DD878F3178153994C64C5508DCC056654200AABA37966B774E05100D10D7CF30B812F442EB76CEFAAEA53A603322E1005D8D998682F77D2F340882DF4';
wwv_flow_imp.g_varchar2_table(26) := '985BE9080880ADE54E26D9BEB2B6D38D285C118802FD57E3CCDE4445CDE312C41BF4989BF704A48457E295F1A5540BB766774D200AF8DDA744B6B339BE5A805C8D8F83F7BD7498944FB77E29C58ACE96C4CFA9066EC6E8AA40D7026F6F9EFE867472D542';
wwv_flow_imp.g_varchar2_table(27) := 'C0AF70493D76ED79DE1B2620802EE6AE41D689CE96F83B86471F76384F04A2993B1B6B7BDA9B122FE1923A4D3AE2491469133E2FB1F1A64100BB6691E54610F27B898AF83D1DCD895F136B7CDE93CD3381AE65434B6A6763FCBDF6E6C4E39194335608F9';
wwv_flow_imp.g_varchar2_table(28) := '305E3B7A1EDB0604F16F1090B9F65ADEDF4400D9E41949F823FECB4F8584C5FDB9EC5864B9BCA369FA87C4169FF774F35CA0EBB3DBFD4CCD85F6A6E91F75344F5F8BAD0941CCEE684A4411CAE828944D8E0888E3E9670348B110402EC54BF0CBC3D02857';
wwv_flow_imp.g_varchar2_table(29) := 'CA99722706C48298109B3CA3964423AE34AFB5B724FE7160E58C4BD733F5FAE7920A74AB6409CAA7CDD34EEE6E4A1CA6D3CF8E96F876146C335D820F43A35C2967CA9D18100B62722B5EA57CDE9702951208CF5D1C0116A8385EFCEA9B08B0403701E187';
wwv_flow_imp.g_varchar2_table(30) := 'C51160818AE3159C571BCA8405320432ACC3B04061ADBCA1BC59204320C33A0C0B14D6CA1BCA9B05320432ACC3B04061ADBCA1BC59204320C333CC8D99B24037F2E047451260818A04C62FBF91C0FF000000FFFF80E624B300000006494441540300FD59';
wwv_flow_imp.g_varchar2_table(31) := '348A174429E20000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(31669282836722690237)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700000A10494441547801EC9CCB6F5CD51DC77FCE786C1C272169185CDB6112F272C9A3384A49D24758948A0AA9222D52372DEA9FD04DB75D74D12D159548D555BBE9A6';
wwv_flow_imp.g_varchar2_table(2) := '8BAA6AA54A0D4408901084F0106F4220380F8883E3D8B11D8F1F3336F74EC871B0329A3BF639E79EC707F93A673C777EBFDFF97CEF27B6E36BD60CFEFDEC22070C62BD06D608FF41206202081071F86C5D0401B80AA226800051C7CFE6231680F021C097';
wwv_flow_imp.g_varchar2_table(3) := '405C039113E03340E41740ECDB4780D8AF80C8F78F00915F00B16F1F0162BC02D8B32280000A058B180920408CA9B367450001140A1631124080185367CF8A000228142C6220B07C8F08B09C088FA322800051C5CD6697134080E544781C150104882A6E';
wwv_flow_imp.g_varchar2_table(4) := '36BB9C00022C27C2E3A80844244054B9B2D98C04102023284E0B93000284992BBBCA4800013282E2B43009204098B9B2AB8C0410202328AF4F63F8860410A0211A9E88810002C490327B6C4800011AA2E189180820400C29B3C7860410A0211A9E088140';
wwv_flow_imp.g_varchar2_table(5) := 'B33D204033423C1F340104083A5E36D78C00023423C4F341134080A0E36573CD08204033423C1F34818005083A3736A7890002680249193F0920809FB931B5260208A0092465FC2480007EE6C6D49A08208026904E956198CC041020332A4E0C91000284';
wwv_flow_imp.g_varchar2_table(6) := '982A7BCA4C000132A3E2C41009204088A9B2A7CC041020332A4EF48140AB332240ABC4383F28020810549C6CA6550208D02A31CE0F8A00020415279B69950002B44A8CF3832210900041E5C2662C1140004BA069E3260104703317A6B24400012C81A68D';
wwv_flow_imp.g_varchar2_table(7) := '9B0410C0CD5C98CA120104B004DA681B8AAF980002AC181D2F0C81405002D46E8CCBEC9717A472F18C4C0FBD67E4A89CFF406687CFC9FCD8B0D4A62742B806A2DE4310022CD6AAC9453924B32397EA17E5626DDE58A88B8B0B529B9996F9EB5725956DE6';
wwv_flow_imp.g_varchar2_table(8) := 'F2A7B2383F67AC1F85CD12084280B9ABC9853F3365965483EA0BB315A97CFEB15427471B9CC1875D26E0BD00D5A931A9556E5EFC777514E5F09E1DF2C4D183F2E44F8E18397EFDC86179E4E01ED9B7BD2CC5F67695EDDCE865991FBFA21EB3B04360B55D';
wwv_flow_imp.g_varchar2_table(9) := 'BC17A07663E9EBF003BBB7C9AEBE92ACED2CAE964BC3D7B7B5B549EFA60D32B8BD4F1EFFC183D27BCF2675EEFCF848F2BD011228201E2CBC176061765A612E97962E46F541838BAEE433CE8F0707A4DC53525DE6AF8FC8DCB5CBEA310BB709782FC0E242';
wwv_flow_imp.g_varchar2_table(10) := '4D112E16EC6FA72DE97E74FF0ED9D67B6FB2BAF9569D1845829B289C7F6FFF8A711E49EB03A612FC68EF7624681D5DEEAF40008D11A412ECE8EF5115EB9F0946BF508F59B847C06301DC83994EF4FD07EE976F4830794DE6902045E3E4810006624925D8';
wwv_flow_imp.g_varchar2_table(11) := 'B9A55755AEA6128C5C90DBBF5F514FB2C895000218C27FE43B5B6577B94F55AF26FF5C3B7329F98159F213E485E427C9EA0916B912400083F80FED2E4BFAB38942FA5D72D227FD0C3037362C33C3E78CDCA7346DE8FEA7B46EE5E247F55B3F6A37C6939D';
wwv_flow_imp.g_varchar2_table(12) := '84F3860086B3DC5BFEB63C76645036AEEB36DCC96CF9F47EABF4E6BFF47EABD92B43923E36DBD14E7504B0C07963F75DF2B323FBE587FB0764F77DBDB2F9EEF5ABEB9AF3ABD35B4FD2FBAF721E434B7B04D082315B91FB7B36C9A181ADF2D8437B8DDCA7';
wwv_flow_imp.g_varchar2_table(13) := '64EAFEA7B46E7A7FD5E107764867B158DF6C2A4175CAFF2F8710A01E27EF9A1148EFAFDAD55F9203BBB6AA53D32F89D4034F1708E06970798DDD5FBA5BB55E98ABA8B5AF0B043098DC4465565EF9F033F9DFABEFCA3F4EBE1AC4F1AF17DF50C416ABE67E';
wwv_flow_imp.g_varchar2_table(14) := 'F1483531BC40004380DF1DBA2CFF7DF92DF9F4F32B323675C35097F8CAEADE3102E8269AD43BF5D190BCFDC9F964C59BEB0410407342A7CE9C97B3978655D55D7D9BE5AFBF79585EFADD4F8339D4E602582080C6104F7F7C41CE5E5CFA6598BDE51EF9CB';
wwv_flow_imp.g_varchar2_table(15) := '2F0FCA9E5297C62E94D249000134D14CBFD93D7361E9D6E7812D25F9D3CF1F94CEF6AFEF83D0D487327A090425C089D73F10DBC7FF4FBF2FFF7CE174FD9BDD5BD1A417FFD3BF1894AE2217FF2D26AEFEE99100CD118E8C4F88EDE3EAF54999AF2EFD5AE6';
wwv_flow_imp.g_varchar2_table(16) := '433BFBE5E9270E48774750689BC3F7F40C52D214DCCEDECDF2FB6387E4A963FBA49BBFF93551355F2628019E79F2A8D83E8E273D4FFCF651F9DBAFBE278FEEB4FB7FA5307F7984DF212801BEDBB3566C1FFB939E7CADEFAF284109E06F0C4C9E170104C8';
wwv_flow_imp.g_varchar2_table(17) := '8B7C2B7D39D7180104308696C23E1040001F526246630410C0185A0AFB4000017C4889198D114000636829AC8380E91A08609A30F59D2680004EC7C370A609208069C2D4779A0002381D0FC399268000A60953DF69020E0BE03437860B840002041224DB';
wwv_flow_imp.g_varchar2_table(18) := '581901045819375E15080104082448B6B1320208B0326EBC2A100208E06290CC648D000258434D23170920808BA93093350208600D358D5C2480002EA6C24CD608208035D434CA42C0F63908609B38FD9C2280004EC5C130B60920806DE2F4738A000238';
wwv_flow_imp.g_varchar2_table(19) := '1507C3D8268000B689D3CF29020E09E014178689840002441234DBBC330104B833173E1A090104882468B67967020870672E7C34120208E042D0CC901B0104C80D3D8D5D2080002EA4C00CB9114080DCD0D3D80502DE0BD05668571C276617D49A851902';
wwv_flow_imp.g_varchar2_table(20) := 'D76F637C3B7B33DDCC57F55E80351D5D8AD29B5F4CAA350B33044E5F9A5085D7742EB1571F6C7191F7E9DE0BD0BE7E9362F8E7E7DE91E7CF8DCBF80C9F0914144D8BB1999A3CFBC9983C73F21D55B17DFDB7D4DAD785F70214D66E9042D7FA3AFFD1C969';
wwv_flow_imp.g_varchar2_table(21) := 'F9C3BF4FC9E3C79F93879F3AC1A191C1B1E327E58FFF794DAE4D55EAAC6FE75EFF80A7EFBC1720E5DE714F7F22C1BA74C9618140A16B9D746CEEB3D0C97C8B200448BF19EBECD9269DA52D92FECDD456289A27175987B6F6A2B4776FA8334E59B71596FE';
wwv_flow_imp.g_varchar2_table(22) := 'F1C167144108702B8042F746E9BCB72C5DF70DC8DA6DFB383432E8DA32201DA5B2A48C6FF10EE1CF1C0508011F7BF09D0002F89E20F3AF8A0002AC0A1F2FF69D0002F89E20F3AF8A0002AC0A1F2FF69D0002E491203D9D218000CE44C120791040803CA8';
wwv_flow_imp.g_varchar2_table(23) := 'D3D3190208E04C140C92070104C8833A3D9D218000CE4411C720AEED12015C4B8479AC124000ABB869E61A0104702D11E6B14A0001ACE2A6996B0410C0B54498C72A018B0258DD17CD209089000264C2C449A11240805093655F99082040264C9C142A01';
wwv_flow_imp.g_varchar2_table(24) := '04083559F69589000264C2B4CA9378B9B30410C0D96818CC060104B041991ECE12400067A361301B0410C006657A384B00019C8D268CC15CDF0502B89E10F31925800046F152DC750208E07A42CC6794000218C54B71D7092080EB09319F51020605303A';
wwv_flow_imp.g_varchar2_table(25) := '37C521A085000268C148115F092080AFC931B7160208A00523457C258000BE26C7DC5A082080168CCB8AF0D01B0208E04D540C6A82000298A04A4D6F082080375131A809020860822A35BD218000DE44E5C7A0BE4D8900BE25C6BC5A092080569C14F38D';
wwv_flow_imp.g_varchar2_table(26) := '0002F89618F36A2580005A7152CC370208E05B62CCAB95804601B4CE453108582180005630D3C4550208E06A32CC6585000258C14C1357092080ABC93097150208A0033335BC258000DE46C7E03A0820800E8AD4F0960002781B1D83EB2080003A2852C3';
wwv_flow_imp.g_varchar2_table(27) := '5B0208E06D746E0CEEFB145F010000FFFF2FA55CDC00000006494441540300646E3E9B6677BCA10000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(31669283173160690237)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC9D0B705CD579C7BF73572BCBD8807918B08DC146BBC260B0563610DEB6FB086903E19186211DC7960C1926ED4C9B165A1A1AA879A4A56D3A';
wwv_flow_imp.g_varchar2_table(2) := '93A4D3B49962AF2093E9B409AF349981B6C18E5B123A204BB26BD7D14A367EE047FC7E5BDADD7BF29D95B496D6B2BD2BDD7BCEB97BFE9AF3E93E74EFF9BEEFF79DF3D7BD57BB2B8FF0050220E02C010880B3A547E220400401C0280001870940001C2E3E';
wwv_flow_imp.g_varchar2_table(3) := '52779B80CA1E02A028C040C051021000470B8FB44140118000280A301070940004C0D1C2236DB7090C660F01182481250838480002E060D19132080C1280000C92C012041C24000170B0E848D96D0243B387000CA5817510708C0004C0B182235D10184A';
wwv_flow_imp.g_varchar2_table(4) := '0002309406D641C031021000C70A8E74DD26509A3D04A09408B641C021021000878A8D5441A0940004A09408B641C021021000878A8D54DD263052F6108091A8601F0838420002E048A19126088C440002301215EC0301470840001C2934D2749BC099B2';
wwv_flow_imp.g_varchar2_table(5) := '87009C890CF683800304200025454E7C2B332E95DE3C69767AF31537AFE89E3EE7D58F66A6D23DC9A61599EBE7BEB271CE9C1599B9735BBBE7C1EC6350A80DD748D54AD54CD54ED550D552D554D5B6A4DCCE6F3A2900F35A33F58DE9AE871A57649E4BA5';
wwv_flow_imp.g_varchar2_table(6) := '336FB2B5B37DCC26279E4F27897207E294DB991572AB97CF6E22F2BBA4A0F5BE1FEBF404B5F9527E08B38F41A1365C23552B55338F6BA76AA86AA96AAA6AAB6ACCA66AAD6AFEA61A036A2CDCB8A2EB1A17D5C0090148A5BB524DE9AE6752E9CC4FD98EE6';
wwv_flow_imp.g_varchar2_table(7) := '25750B12AF0941CF72D1EF674BB14D6543738380AAB5AAF9FD6A0CA8B11013A2478D0DB6558D2BBABEDAB4FC178DD582E26C7954A500CCFEB7F5B57C09F8DBA9D6CCB79BD299AD44A25D92789E88EE669BC08606022311506363BE10E205E9791D2C069B';
wwv_flow_imp.g_varchar2_table(8) := '52E9EE6F34B5F6FCBA1A53239D10F57D552500735FEE4EF0A4FFCBF8B15A75D9FE6392F42549343DEA4542FCC608CC24927F28A5FF5F6A4CB1207C4D8D3163D184E038F20230FB1FD64F6C4C6796A65ABBFEDB8FC90C4FFAAF30A7696C682010240135A6';
wwv_flow_imp.g_varchar2_table(9) := '9E5663AC29DDBD3A95EE6A56632F480726FA8AB40034BED2FD60FCBCDAF705D17292E24E1300E1D33D0292E45D4422CD638F9F1764EE218BBFCE155A24052095CE2CE0DFFA3F17BE7C9D139CCD8606022608CC1382DE5663518D4913018CD567A404405D';
wwv_flow_imp.g_varchar2_table(10) := '7235A6BBFE85935EC9BFF56FE5251A08182730301657A65A33DF5563D47840150410190148ADE8BE9D2FB93A0589472AC80F8782803E029216F118ED502F12D3E7746C9E2221004DADDD8B49C8959CAA932FD6E0BCD1A243A0DE97F26785316B38E672DC';
wwv_flow_imp.g_varchar2_table(11) := 'DB2D00520ABEB7FA9A94F2154EA6960D0D04A240A0568D591681176C0FD65A01502FBC686AEDF901037C9A0D0D0422478045E0ABA9159957D458B635782B0560C1B29535F1E3B5AFF19F5B1EB2151CE20281B208085A1C3F5AFB7D35A6CB3A5EF341560A';
wwv_flow_imp.g_varchar2_table(12) := 'C0C119D35F2549F76A66017720100E01419F3938E3CA74389D8FDC6BB97BAD1380A674E62592F2F3E52680E340201204F82F0485B16D59B05609003FF0FBB2247ACA32460807040221A0C6B61AE38174165027D60840AAB5FB0ECEE9EFD8D040A09A097C';
wwv_flow_imp.g_varchar2_table(13) := 'BD71798F352F5BB742000A4F49FBFFD467453CD53CFA909B71023111F3D385311F522895746BC584AB3D56ABDEAB5F5F49E0381604224B40526260CC1B4FC1B800CC79B9FB06BE377AD238090400021A09A8317F63BAE7468D2E4774655C00BC987C9123';
wwv_flow_imp.g_varchar2_table(14) := '8BB1A181804B046231F28DBF52D0A800A837F870C5D567F2F1020D049C23707FD00F042B2568540048C8BFAD34601C0F02D5444078BEBA02369692310148A5BB1FE0AC6F674303019709CC9F9BEEFE942900C60480487ED954D2F00B023611F049FE99A9';
wwv_flow_imp.g_varchar2_table(15) := '788C0840D3CB9BAEE684D54774F3020D049C2770F79C5737CE1C2B85D19C6F4400642CDFC2C10A363410000122E1E5634BC8C0977E0190524DFC6603B9C22508D84C6031F5CF0DAD316A1780B9ADDD9FE00CD52D002FD04000040608CC1C981B039B7A16';
wwv_flow_imp.g_varchar2_table(16) := 'DA054012A9A7FF842F100081E1047CA251FF3560784FE56F991000ED49968F034782805102DAE7865601685ABE712AE39DC386060220703A815BE67DA7E7C2D37787B747AB0048CFFB24A7A21E02F2020D0440A08480F06BE56F95EC0B7553AB0008F2F0';
wwv_flow_imp.g_varchar2_table(17) := 'DF7C085F207056020BCEFAD3117E38965D5A0540924C8D25589C0B02D54E40F71CD12700CBA4F285FBFF6A1FC1C86FAC046EA4FEB932D67ECA3A5F4DCAB20E1CEB41A9AB336AF28F1F6B3F381F04AA9CC079F3AEEE6AD095A33601E0277FB8FFD75555F8';
wwv_flow_imp.g_varchar2_table(18) := '8934019F6265DF2A8F35516D0240E4694B6AAC50703E08982520B5CD154F5FA272863E5FF00402D125208966E98A5E9B00705257E84A0A7E4020E204B4FDB2D426005C100800434003813208943557CAE8E79C87E8118065CB3C1274C939A3C101200002';
wwv_flow_imp.g_varchar2_table(19) := '8AC0C5BAFE14E8296F61DBB5D31F9940926AC2F683FE41A04A08C4E74D69ABD3918B160118EF8D8BE948063E40A05A08E46B2FA9D5918B1601F063792DC9E800061F20A083C0B9E64C5031681180B8A8C115405015433F4E10D03567B408406F3687FB7F';
wwv_flow_imp.g_varchar2_table(20) := '27862D920C8A80AE39A345006A44165700418D0CF4E304015D73468B00C4700BE0C4A04592C11138DB9C09CE0B911601905E1C0F0183AC1AFAAA7A0239E169B96AD62200447D555F30240802411288F5E5AB4900824483BE4000048222A0E90A20A870D1';
wwv_flow_imp.g_varchar2_table(21) := '0F08B84D20E8EC21004113457F20102102108008150BA18240D00420004113457F20102102108008150BA1BA4D208CEC21006150459F20101102108088140A618240180420006150459F20101102108088140A61BA4D20ACEC2100619145BF2010010210';
wwv_flow_imp.g_varchar2_table(22) := '80008AE4677B297FEC20650FFE3254CB1DD9477EEFF10022461720D04F0002D0CF6154DF65AE8F4EEEE8A1931F67A877CFF65027BF1297BE7D3BE9E4CE4D74FCA3FFE3650FC4605455C3494309400086D2A8603D7FE2284FFC6EF2FB4E5470567087FABD';
wwv_flow_imp.g_varchar2_table(23) := '27580436B1E8EC09AE53F4642581308382008C82AECCE7A86FCF3692D22F9E3DA16E1C4D9E7441A876E1C4F38AFE0657B2077753EFAECD24FDFCE02E2C41A06C021080B2519D3AB06FEFC7C509A726E5A76F6BA407EF6CA27B6EBA3E54BBEFD639F4C8C2';
wwv_flow_imp.g_varchar2_table(24) := '5BE8AEC66B69FCB8539FB1923F790C2270AA3C58AB808057C1B1389409A8DFFEF9134778ADBFCD6B9841174D18DFBFA1E17B4DCCA3AB275F44F7B1E84CB9F4A2A247BFEF2444A048032BE5128000944B6AE0B8D24BED4B2F9830F013BD8BDA9A18FD5AEA';
wwv_flow_imp.g_varchar2_table(25) := '5ABAEAF2C945C70511E08784A531160FC04AE408841D3004A052C243EEFBD5A96A22AAA50913ECF4AE1BEB878B00FF49B21722C064D0CA210001288792C5C79C5504F861A5C5A123340B0840002C28C2584318148119532E2B76A55E9C54B81280081499';
wwv_flow_imp.g_varchar2_table(26) := '60E574021080D39944728F12813B675F43C34420D747FD22908D644EAE07AD237F08800ECA1A7D2811484CBBA2E8D12F88C06692FC6CA0B8132B20304000023000A29A16B75E3783EAA75D5E4C4989807AC972EEE881E23EAC80802200015014AAD06EBB';
wwv_flow_imp.g_varchar2_table(27) := '6E26CDBA6A6A3133F5AA45F502A613DB3652EF2FB750F6C06E52EF2F88A2A9375EA9671CC5E4B0326A02108051A3B3FFC49B1AAEA2F9A95954571B2F065B7821D3F123943DB487B221BF7B31ACFE7BF76C27F5062C657E95BE3BB258B090572000210336';
wwv_flow_imp.g_varchar2_table(28) := 'DDFDF44B27D1BDB7A5E8CACB2E311D4AE0FED555807A7764EEF0DEC0FB76A54308800395AE8BC768C19C247D6EC1CDF49B37DF40B75E5F4FB3AFB992AE9F312D9276F5159387BD17A26FFF2E52AF8274A09481A70801081CA9BD1D8EAB89D1E5174EA4C4';
wwv_flow_imp.g_varchar2_table(29) := 'D4C9D4C4023037319DA26877DD504F9FBD6B2E4D9D7C711136AE028A282A5A810054840B07DB44A091456C301EF58EC8C1F5A82F75C60F01D049DB90AFC3277A69C7FEC35567C74EF61589CA5C9694157760A52C021080B23045EFA0DE6C9E7EBA2E43FF';
wwv_flow_imp.g_varchar2_table(30) := 'BAEA03FAE17BEDF4EE9A0D5567AB3B370E2B0CDE05390C47591B1080B23045EBA0DD078FD28FDEEFA46DBBF75136874F0A8A56F5F4460B01D0CB3B746FBB0E1C2EFCA63FD17BEAF23874A7D63890D64432DA40749F0701D04D3C447FBB0F1DA5951D1B29';
wwv_flow_imp.g_varchar2_table(31) := 'EF9FFAACC22F2E6CA4D7BFF41BB4FA897BAAD286E314C337B1754E02108073228AC6017B0F1FA3956BFE9FF2F9FEC91FF33C7AE9E1DBE90B73AFA04BCF8B4523893147892B804A1142002A2566E1F13BF9B2FF27FC902F97EFBFDFF784A0E71EBC856E9F';
wwv_flow_imp.g_varchar2_table(32) := '7EBE85D122249B084000C6588D773EDC4026EDED0FD6D34FDA36141FF6A9C9FFFC439FA0BB675C38C6CCA2787AB46F014C1087008C91FA9E8387C9A4ED3D74EA138A552A5FB9EF664727BFCA1E5629010840A5C42C3D7EEAC517D07716DF4DF7242FB234';
wwv_flow_imp.g_varchar2_table(33) := '421D61E11940A594210095122B39FED18573C8943DC6BEFFF4D337D15FF3C3BEE58B6EA5EB268F2F89CEB54DDC02545A710840A5C44A8E5F32770A99B2C5ECFBDE5997D06DFCB06F421C839F28BA570025C34ADB2604401B6A380201FB084000ECAB0922';
wwv_flow_imp.g_varchar2_table(34) := '02016D042000DA50C31108D8470002605F4D109163044CA60B0130491FBE41C030010880E102C03D089824000130491FBE41C030010880E102C0BDDB044C670F01305D01F807018304200006E1C3350898260001305D01F807018304200006E1C3B5DB04';
wwv_flow_imp.g_varchar2_table(35) := '6CC81E026043151003081822000130041E6E41C0060210001BAA801840C01001088021F070EB36015BB28700D85209C40102060840000C40874B10B0850004C0964A200E103040000260003A5CBA4DC0A6EC2100365503B1808066021000CDC0E10E046C';
wwv_flow_imp.g_varchar2_table(36) := '220001B0A91A8805043413800068060E776E13B02D7B08806D15413C20A091000440236CB80201DB0840006CAB08E201018D0420001A61C395DB046CCC1E0260635510130868220001D0041A6E40C0460210001BAB829840401301088026D070E336015B';
wwv_flow_imp.g_varchar2_table(37) := 'B38700D85A19C405021A0840003440860B10B0950004C0D6CA202E10D0400002A001325CB84DC0E6EC2100365707B18140C8042000210346F7206033010880CDD5416C201032010840C880D1BDDB046CCF1E0250618544AC66D819C7FAFC61DBD8D047E0';
wwv_flow_imp.g_varchar2_table(38) := '48097B118BEB735E259E20001516520D32E1C58A67F51C38595CC78A5E02DDFB4EB1172CCCCAF446107D6F108051D4B0E6FC8B8B677DF3DD0DB4FD70B6B88D153D04B61EEAA36FBDBBBEE86C684D8A3BB1724E02108073223AFD80F8A4C9246AFA2F3733';
wwv_flow_imp.g_varchar2_table(39) := '3BF6D1EFFEF3BBF4F9F4CFE98FDE580BD3C0E091F4CF68D1CB2BA967D7FE42713CAE45FCC2C985759BBE45211608C068AA243CAABD641A095E0E9EFEF1FEC3D4B669274C03831DFB8F0C6227C135885F3A8D4808C257E504200095332B9C111B3F91EAA6';
wwv_flow_imp.g_varchar2_table(40) := '25C8ABAD2B6CE39B7E02DEB8F1851AC4EA26EA775E251E21006328A4A8A9A5BAA909AA9B96A47193AFA4F8A4CB601A1828D6E39979DD947ABE15AB1D430571AA07046327E0C5C7516CC2244C7E0D935F89AC622D98F9D82B175E0F51E9190210954A214E';
wwv_flow_imp.g_varchar2_table(41) := '10088100042004A8E81204A242000210954A214E10088100042004A8E8D26D0251CA1E0210A56A215610089800042060A0E80E04A244000210A56A215610089800042060A0E8CE6D0251CB1E0210B58A215E1008900004204098E80A04A246000210B58A';
wwv_flow_imp.g_varchar2_table(42) := '215E1008900004204098E8CA6D0251CC5E8B00E4652C1F45388819044C111071D1A7C3B716E6299AA20000071B4944415401A8913E04404735E1A36A08E4654ECB9CD12200BA92A99AEA2311E709E464BC7A04405732CE8F1A0030462068C7E3E235B9A0';
wwv_flow_imp.g_varchar2_table(43) := 'FB1CA93F2D5700BA92192941EC03812812C856D52D404E9E8862111033089822E0E563D5F310303BE1F8715320E11704A24840D79CD1720BB0FEE1D94ACD7AA35808C40C02E72210C2CF7B07E64C085D0FEF528B000CB8DC35B0C4020440E0EC04B4CD15';
wwv_flow_imp.g_varchar2_table(44) := '08C0D90B819F828009021FE9720A01D0451A7E40A04C0282A8FAAE0038A98D65E68FC340203204420AB41AAF00444748B0D02D085419017D7345DB2D8047790840950D53A4130E019D73459B00B46D69E8625C3E1B1A0880C099091C1F982B673E22C09F';
wwv_flow_imp.g_varchar2_table(45) := '6813005A2678F2CB0CE10B04AA84404869ACA3C25C212D5FFA0480D31124701BC01CD040E04C0484E639A2550088E4AA33258EFD2000028A80AFF597A45601C8E7C48F3845C986060220703A0149BEFFC3D37787B747AB00ACFD62723BA7B2960D0D0422';
wwv_flow_imp.g_varchar2_table(46) := '4D20A4E0D7B63F3A6B47487D8FD8AD5601501108A2B7D512060220309C8089B9A15D00F8FA1F0230BCEED8028102011680370B2B1ABF69178058DFA1F738BF2D6C68200002A7086CBD60CBF60F4F6DEA59D32E006D8FDF94E5D45AD9D040209204420A3A';
wwv_flow_imp.g_varchar2_table(47) := 'BD6AD9422D9F0338347EED02A09C8B7C2CCD4BBE1BE0EF6820E03A0141B998E7AD3081C18800B43F76CD16BEDFF90F1309C32708584740D28FDB96D46F35119711015089F2AFFF97D41206022040DF20435FC604A0A325B98AAF02DE319437DC82C0A808';
wwv_flow_imp.g_varchar2_table(48) := '047D929A036A2E04DD6FB9FD1913804280BEFF5461896F20E028811C797F623275A302D0FEE8B59D9CFC5B6C6820E02281B7D6B5D4AF3399B8510150897B79F124093AAAD66120E010816331414F98CED7B800AC792CD14D929E310D02FE41E05C0482FC';
wwv_flow_imp.g_varchar2_table(49) := 'B920F9645B73B227C83E47D39771015041272724FE9E84FC1FB50E03010708BCD7DED2F04F36E46985007CFF6191F7725E0B6E056C181288216402EAD27F49C83ECAEEDE0A0150D1AA5B01BE2C6AE6759F0D0D04AA91802F3DF1051B2EFD07E15A23002A';
wwv_flow_imp.g_varchar2_table(50) := 'A0F6E686D7F8EFA27FAED66120601381806279A27349E28D80FA0AA41BAB044065D4DE927C896F05D47B05D4260C04AA8480F866474BD2D82BFECE04D13A015081C67A0F3DCECBFF64430381E81390F28D8E2DF57F6C6322560A807ACB70AC6FC20382C4';
wwv_flow_imp.g_varchar2_table(51) := 'EB3642434C20500181B762D9898B48E3477D53055F560A808ABFEDF1A9C7DB9BEB7F4708F1A2DA8681802902A3F62BE8AF3A9A130FAAB13CEA3E423ED15A0128E42D846C6F4E3CC322A0FE6C922FECC33710B09F401F3FC75AD4D19C7C9A780CDB1CAEDD';
wwv_flow_imp.g_varchar2_table(52) := '0230408E45E0555FCA3B88E42F067661010256121044EB84EFDDC193FF7B5606581254240440C5BC7669C3FF4EA2788AD79F63531F2BC60B3410B08640569278C1EB3B34AFFDD17AED9FED375A0A91110095E0AA969927F94F29CBA4E7DDC04AFBEF6A1F';
wwv_flow_imp.g_varchar2_table(53) := '0C04C2245046DF3CEFE9075E5E5CDFD99278563DC02EE31C6B0E8994000C52EB5C52DFD5DE92FC0CDF5FDDC9FBD4A70CF3020D04B41358253D9AC797FB9F53AF64D5EE3D0087911480C1BC3B9A13EFF115C19D9CC46D92E8BBBCBF970D0D04C224A0C6D8';
wwv_flow_imp.g_varchar2_table(54) := 'F7D42F1F1E7B0B3B9724DBC3741676DF3C77C276117EFF6B5A92EF77B62417C7FAFC2B490AF5092B3DE17B8507C7086C22219F52638C273E3FE14F54C595675508C0E0406C7BFCDABD1D4B135FE70225A4A44FF1FE6FF3B3826DBC4403818A0914C68EA0';
wwv_flow_imp.g_varchar2_table(55) := '7FE4BF3E7D92C7547D4773C3DFA831567147169F505502309473E7D2E43B5CB4DFE767055709DF4F4929D5878EACE6638EB1A181C04804D4D8582D483ECB93BE498D9D8EE6E4EF75B43454EDCBD2AB56008656577DF660E7D286173B5A92F3D926E6A5AC';
wwv_flow_imp.g_varchar2_table(56) := '97243FCB5709CFF371EA33093B78A9F5BFB2B23F34730454AD55CDDF5263408D8598A0841A1B6CF3DB5B1A5EE049AF7E6E2E424D9E9D10805296EB96366CEA6C69789DAF12FEA2A325F9005B13DB343671F408D511D55C94A59A297129AEF263F16B88BC';
wwv_flow_imp.g_varchar2_table(57) := '062169B6E7E51B7D49F33C216E82D9C7A0501BAE91AA95AA99AA9DAAA1AAA5AAA9AAADAA319BAA75132F1F5063A093C7429B051FCF553A4E756C7B3A9C44C947F71F247B3B5A661E5CDF3273D7074B13DBD62E9EB1B9A3A53ED3BE34B961CD92596BD72E';
wwv_flow_imp.g_varchar2_table(58) := '4DAE59D39C6883D9C7A0501BAE91AA95AA99AA9DAAA1AAA5AAA9AA6DB963D195E32000AE541A7982C0080420002340C12E1070850004C0954A234F1018810004600428D8E5360197B28700B8546DE40A02250420002540B009022E118000B8546DE40A02';
wwv_flow_imp.g_varchar2_table(59) := '250420002540B0E93601D7B28700B85671E40B024308400086C0C02A08B8460002E05AC5912F080C210001180203AB6E1370317B08808B5547CE20304000023000020B1070910004C0C5AA2367101820000118008185DB045CCD1E02E06AE59137083001';
wwv_flow_imp.g_varchar2_table(60) := '080043400301570940005CAD3CF206012600016008686E1370397B0880CBD547EECE138000383F0400C06502100097AB8FDC9D270001707E08B80DC0F5EC7F050000FFFF8946FF9600000006494441540300DE77B6C40FC1D4860000000049454E44AE42';
wwv_flow_imp.g_varchar2_table(61) := '6082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(31669283781195690238)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000100494441547801EC93CD0A01611486DFC6CFD0209142849A159158D9CBC23DC8E5B80C59B90BEEC0CA8EB2B040F9CBC264E11B331B219C9A8F66734EBD353573';
wwv_flow_imp.g_varchar2_table(2) := 'CE79E6E9FB946A7F66BA19052E1703B00136C0064803FED31A791CEEC9E18880B1074C815F1409908EA8A8E9D97BEA7A06AD620621630708790812E0DD5F7A3D0A9AE53C4ADA058F765E9F7D963D10E508409826A68B252A490D8D42FC63F4A88F580F90';
wwv_flow_imp.g_varchar2_table(3) := '00414540BD9E9FA20903BD7609DD5AEA6BAAB9843C803DE47551C75A1C56497672B9FDC16FA6D8931C8601D80069603CDF62305939CAC8EAA5CE2609B0F6C4305C0847D958BDD200D400D9F7A401D905543F03B00136F07703D435BC010000FFFF9CDFC6';
wwv_flow_imp.g_varchar2_table(4) := 'B2000000064944415403007CB1DA6112759C360000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(31669282508318690236)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD698C9CF77D1FF0DFCC2EB9BB3C658A87A85B964451B22EEAA62CC796E3038DEBF848DDC66DE216286A07718A1648D11705DC0B68FB2EE8';
wwv_flow_imp.g_varchar2_table(2) := '8BBC08D0024503B40DECA64551E48D1BC74D13C7F7A9D3D62D91A2789312AF5DEEEEF47996B27571766777E7789EE7F72138E4729E679EE7FFFDFC66B8DF9D192EDB77FEA7A73A2E0CDC07DC07DC07DC07DC0772DD07DAE107010204081020904C204201';
wwv_flow_imp.g_varchar2_table(3) := '4837728109102040808002E03E408000010204D20994813D03502AB810204080008164020A40B2818B4B80000102D9052EE457002E38F8950001020408A4125000528D5B5802040810C82EF0F3FC0AC0CF25FC4E80000102041209280089862D2A010204';
wwv_flow_imp.g_varchar2_table(4) := '0864177823BF02F086858F0810204080401A010520CDA8052540800081EC026FCEAF00BC59C3C70408102040208980029064D06212204080407681B7E65700DEEAE14F0408102040208580029062CC4212204080407681B7E75700DE2EE2CF0408102040';
wwv_flow_imp.g_varchar2_table(5) := '208180029060C8221220408040768177E65700DE69E21A0204081020D0780105A0F123169000010204B20B5C2CBF02703115D7112040800081860B28000D1FB07804081020905DE0E2F915808BBBB8960001020408345A400168F478852340800081EC02';
wwv_flow_imp.g_varchar2_table(6) := 'DDF22B00DD645C4F80000102041A2CA0003478B8A211204080407681EEF91580EE36B6102040800081C60A28008D1DAD6004081020905D60B1FC0AC0623AB6112040800081860A28000D1DAC5804081020905D60F1FC0AC0E23EB6122040800081460A28';
wwv_flow_imp.g_varchar2_table(7) := '008D1CAB5004081020905D60A9FC0AC05242B6132040800081060A28000D1CAA4804081020905D60E9FC0AC0D246F62040800001028D1350001A3752810810204020BB402FF915805E94EC4380000102041A26A000346CA0E210204080407681DEF22B00';
wwv_flow_imp.g_varchar2_table(8) := 'BD39D98B0001020408344A400168D438852140800081EC02BDE657007A95B21F010204081068908002D0A0618A4280000102D9057ACFAF00F46E654F0204081020D0180105A031A3148400010204B20B2C27BF02B01C2DFB122040800081860828000D19';
wwv_flow_imp.g_varchar2_table(9) := 'A41804081020905D6079F91580E579D99B00010204083442400168C418852040800081EC02CBCDAF002C57CCFE0408102040A001020A4003862802010204086417587E7E0560F9666E4180000102046A2FA000D47E84021020408040768195E4570056A2';
wwv_flow_imp.g_varchar2_table(10) := 'E6360408102040A0E6020A40CD0768F904081020905D6065F9158095B9B9150102040810A8B5800250EBF1593C01020408641758697E0560A5726E4780000102046A2CA000D47878964E80000102D905569E5F0158B99D5B122040800081DA0A2800B51D';
wwv_flow_imp.g_varchar2_table(11) := '9D8513204080407681D5E4570056A3E7B60408102040A0A6020A404D0767D904081020905D6075F91580D5F9B9350102040810A8A5800250CBB15934010204086417586D7E0560B5826E4F80000102046A28A000D47068964C80000102D905569F5F0158';
wwv_flow_imp.g_varchar2_table(12) := 'BDA123102040800081DA092800B51B9905132040804076817EE45700FAA1E8180408102040A066020A40CD0666B904081020905DA03FF91580FE383A0A0102040810A895800250AB71592C010204086417E8577E05A05F928E4380000102046A24A000D4';
wwv_flow_imp.g_varchar2_table(13) := '6858964A80000102D905FA975F01E89FA523112040800081DA082800B5199585122040804076817EE65700FAA9E9580408102040A026020A404D06659904081020905DA0BFF91580FE7A3A1A0102040810A8858002508B315924010204086417E8777E05';
wwv_flow_imp.g_varchar2_table(14) := 'A0DFA28E4780000102046A20A000D46048964880000102D905FA9F5F01E8BFA923122040800081CA0B2800951F91051220408040768141E4570006A1EA980408102040A0E2020A40C507647904081020905D6030F91580C1B83A2A0102040810A8B48002';
wwv_flow_imp.g_varchar2_table(15) := '50E9F1581C01020408641718547E056050B28E4B80000102042A2CA000547838964680000102D90506975F01189CAD23132040800081CA0A2800951D8D851120408040768141E6570006A9EBD80408102040A0A2020A404507635904081020905D60B0F9';
wwv_flow_imp.g_varchar2_table(16) := '1580C1FA3A3A0102040810A8A4800250C9B1581401020408641718747E0560D0C28E4F80000102042A28A000547028964480000102D905069F5F0118BCB133102040800081CA092800951B89051120408040768161E4570086A1EC1C0408102040A06202';
wwv_flow_imp.g_varchar2_table(17) := '0A40C506623904081020905D6038F91580E1383B0B0102040810A894800250A971580C01020408641718567E056058D2CE4380000102042A24A000546818964280000102D90586975F01189EB533112040800081CA082800951985851020408040768161';
wwv_flow_imp.g_varchar2_table(18) := 'E6570086A9ED5C0408102040A022020A404506611904081020905D60B8F91580E17A3B1B0102040810A8848002508931580401020408641718767E0560D8E2CE4780000102042A20A000546008964080000102D905869F5F0118BEB93312204080008191';
wwv_flow_imp.g_varchar2_table(19) := '0B2800231F81051020408040768151E4570046A1EE9C040810204060C4020AC08807E0F404081020905D6034F91580D1B83B2B010204081018A9800230527E272740800081EC02A3CAAF008C4ADE790910204080C00805148011E23B3501020408641718';
wwv_flow_imp.g_varchar2_table(20) := '5D7E056074F6CE4C80000102044626A0008C8CDE890910204020BBC028F32B00A3D4776E0204081020302201056044F04E4B80000102D905469B5F0118ADBFB3132040800081910828002361775202040810C82E30EAFC0AC0A827E0FC04081020406004';
wwv_flow_imp.g_varchar2_table(21) := '020AC008D09D9200010204B20B8C3EBF0230FA195801010204081018BA8002307472272440800081EC0255C8AF0054610AD6408000010204862CA0000C19DCE90810204020BB4035F22B00D5988355102040800081A10A280043E5763202040810C82E50';
wwv_flow_imp.g_varchar2_table(22) := '95FC0A405526611D04081020406088020AC010B19D8A00010204B20B5427BF02509D5958090102040810189A800230346A272240800081EC0255CAAF0054691AD64280000102048624A0000C09DA690810204020BB40B5F22B00D59A87D5102040800081';
wwv_flow_imp.g_varchar2_table(23) := 'A10828004361761202040810C82E50B5FC0A40D526623D04081020406008020AC010909D8200010204B20B542FBF0250BD995811010204081018B88002307062272040800081EC0255CCAF0054712AD6448000010204062CA0000C18D8E10910204020BB';
wwv_flow_imp.g_varchar2_table(24) := '4035F32B00D59C8B55112040800081810A280003E5757002040810C82E50D5FC0A405527635D04081020406080020AC000711D9A00010204B20B5437BF0250DDD9581901020408101898800230305A072640800081EC0255CEAF0054793AD64680000102';
wwv_flow_imp.g_varchar2_table(25) := '040624A0000C08D6610910204020BB40B5F32B00D59E8FD51120408000818108280003616DFA413BD1999F8FCEDCF9983F3F1DF333E78ACBD90497226791B7333B53649F5D3088E8347DD8F21120B04281AADF4C01A8FA842AB4BECEECF9983B7B2ACE9F';
wwv_flow_imp.g_varchar2_table(26) := '3C123347F6C5F42BCFC7F481678ACBB3C5E5B9E65F5E29731697578AAC875E88F347F7C7F9138763EECCAB0B85A042A3B2140204082C29A0002C49947B87CEDC6CCC1C7D39CEBEF8789CDBFF54CC949FF88E1F5CF8A4577EF5BFF04C40673E3A192EE5B3';
wwv_flow_imp.g_varchar2_table(27) := '1EF373315F14A1F9E9B3317BFA6451000EC5F4A117E3DCBE9F45E973FED881E2999073B9EF34D213201011D5475000AA3FA391ADB0533CD53D537C729B7DED58BCF189DE53DE171B485980CA4274FED5A3317DB07876E0C4A1E2D5015617B3721D0102D5';
wwv_flow_imp.g_varchar2_table(28) := '105000AA31876AADA2D389F3C75F59F88A766EFA4CB5D65683D594EF8D385F1480B3C5B30273C5B3043558B2251220D067813A1C4E01A8C39486B8C6F20D7D675F7A32CAD7F93B451118E2A91B77AAB208CC1CD91FE5A553BC74D0B880021120506B0105';
wwv_flow_imp.g_varchar2_table(29) := 'A0D6E3EBEFE22FBCDEBFBF78BA7FAEBF074E7CB44E673E664F1D8F99C3FBA2337B3EB184E8043209D423AB02508F390D6595B3270F47F9E6B6A19C2CD949E6CEBE16E75E7E3ACAF709248B2E2E0102151550002A3A98612F6BBE78ADBFFC4AB597F3B6DA';
wwv_flow_imp.g_varchar2_table(30) := 'ED688FAF8D351353B17EC3C6D8B871636CDAB4A9E19722E7FAF531B666225AEDB15E98DEB14FF932C0F481678B92E57D15EFC07105810609D4258A025097490D709DE527A6F29FFA95EFF45FEA34E353EB63E755D7C6EE9B6E8CBB6FDB1D0FDEBE3B1EDE';
wwv_flow_imp.g_varchar2_table(31) := '7373FCF25DCDBD3C74C7EEB8F7D6DD71DFED37C783B7ED8A3DBBAE8B1BAEBE3C766CB924D64D4D46BBD5FBC3A8B42EFFD9E0FCF4D9A5A86D274080C040057AFF9B6BA0CB70F0510A94EFF82FDFFCB7D81A5AC557BDD75E7B6DFCCABDB7C4076FDC1E77ED';
wwv_flow_imp.g_varchar2_table(32) := 'DC18375C32113BD68DC5A6B5ED583FDE6AEC65CB443B76163977AE1F8F6BB6AC8F5BAEDC1A0FECBA3A3E7CD7EEF8F47BEF8C8FBFEF9EA2105C513C33D05A8CF017DBCAF75A4C1F7CAE78264009F8058A0F083446A03E411480FACC6A202B2D3FF1CF9D79';
wwv_flow_imp.g_varchar2_table(33) := '6DD163B7C7C6E2EE9BAE8907AEBFACF8643FB6E8BE19376E2C0AD0FDBBAE8A5FBEFDC6B874DD9AE8A50694CFB64C1F7CBE28015E0EC8789F919940150414802A4C61846B28FF9D7AF915E9624BB8FAB26DB1FB8AED517C91BFD86EA9B7B58AF4976DDD12';
wwv_flow_imp.g_varchar2_table(34) := '1FB97F4FECBE6A478CB7CB6B8A2B17F9B9F072C0C117627EC633018B30D944A05602755AAC0250A7690D60AD9DD999458F7AC9FA75B1E7BA9D8BEE63E31B026363EDE2D992EBE28377DF1653136B63A91F0B25E095F2E500CF042C65653B0102FD155000';
wwv_flow_imp.g_varchar2_table(35) := 'FAEB59BBA37596F8B7E93BB76F89F59313B5CB35EA056FDFBC2EDE7FC7AED838B5B4DDC2CB01875EF472C0A887E6FC04562D50AF032800F59A57DF57BBD4D3FFDB366FECFB39B31C70EBA60D71FF7B6E8C0D136B968C5CCE61E13D015E0E58D2CA0E0408';
wwv_flow_imp.g_varchar2_table(36) := 'F4474001E88F633D8FD2E92CFA5DFF5AAD564F5FC1D633FC70567DD9251BE20377DF1A533D3C8BB2F04C8097038633186721300081BA1D5201A8DBC4FABDDECE7CD723B6DBED181B1FEFBADD86DE042E5937111FB8DDCB01BD69D98B008161092800C392';
wwv_flow_imp.g_varchar2_table(37) := 'AEE479CAFFAEB6FBBBD55BAD625BF1B3924BAFD9A22EDDB43E1EB8F5A6D830D9C31B03E766C3CB01351BB0E51288FA112800F59BD99057AC01F40B7CC7E675F14B77DE1C1313134B1EF2C2CB01BE4FC0925076204060C5020AC08AE9DC90C0F205B66C98';
wwv_flow_imp.g_varchar2_table(38) := '8A87EFD8D5D3BFAC58F827820BFF3AC0F70958BEB45B1018AE401DCFA600D4716AD65C6B81ADE5CB01B7EF8E75BDBC3170E1E580F2FB042801B51EBAC513A8A0800250C1A15852F305766E9A8AF7DD7E53EF2F071C7AC1F70968FEDD42C2DA0AD473E10A';
wwv_flow_imp.g_varchar2_table(39) := '403DE766D50D10D8B6695D3C7C67F14C402FDF3170E19980E77DDBE006CC5D040255115000AA3209EB4829B075E354ECBDE3E61EDF13301FD3E5F70938773AA595D004AA2A50D7752900759D9C753746A07C39E0C1DB76F5FE72C0E117635E0968CCFC05';
wwv_flow_imp.g_varchar2_table(40) := '21302A01056054F2CE4BE04D023B36AF8F0FEEE9F19980B9B9982EFF17C173FE03A13711FA90C08804EA7B5A05A0BEB3B3F286095CBA6132F6DE794B6C5837B564B24EA77839E0E0F33177F6B525F7B5030102042E26A0005C4CC57504462470D9868978';
wwv_flow_imp.g_varchar2_table(41) := 'F0D65D31D9CB370B2A4AC0CCA11763EEF4C911ADD6690910A8B3800250E7E9597B2305B66F9A8A878B97037AFA0F843A9D983EFC52CC1CD91F9DD999467A084580C060041480C1B83A2A815509942F07DC7FDBEE583739D9D371664F1D8FE98567034EF4';
wwv_flow_imp.g_varchar2_table(42) := 'B4BF9D0810E88740BD8FA100D47B7E56DF60812B374FC503E5BF0E58BBF4FF1D5032CCCF9CEB791D7A00001000494441548BE9C3FB62E6E8CBD1999B2DAF7221408040570105A02B8D0D04462F70F9E675F181BB6F89C989DE9E0928573CFBDAB138B7FF';
wwv_flow_imp.g_varchar2_table(43) := '67317DF0F9A20CEC8FF3270EC7ECA9130B6F189C3F7726E6A75D1A613073363AB3E7CB91BB8C48A0EEA75500EA3E41EB6FBCC0B6F513B1F7F69B62C3BA753D672DFF37C1B9B3A762F6B5E3450138183347F61585E085E2F25C4CBFF2BC4BDD0D8A977B66';
wwv_flow_imp.g_varchar2_table(44) := '8E1E8899632FC74CF18CCFECAB47A2FCDE100B85A033DFF3FDC48EB9051480DCF397BE260257142F07BC6FCF2DB171C38655ADB8D3E944A7F804E1325F6F87E2259EF2598CB933AF1525EF5851045E8973AF3C1767F7FD74E172FEC4A188794560550F96';
wwv_flow_imp.g_varchar2_table(45) := '256F5CFF1D1480FACF50822402974E8DC75FBBE796D871E9BB9224167325029DB9B9E2599F4345217876E15981951CC36D7208280039E62C654304D68EB7E3E13B77C5AEAB77C658AB21A1C41888C0C29B420FBE10B3AF1E1DC8F1B31FB409F91580264C';
wwv_flow_imp.g_varchar2_table(46) := '51865402E3AD56DCB7EB9A78F89E5B63C7D62DA9B20BBB3C81F2A59E996307E2DC8167BD6170797429F65600528C59C8260A5CB679437CE88E1BE32377DD1C5B2FD918EDB1B126C694A90F02E5FB05CE1F3F109DF9B93E1CCD21229A61A00034638E5224';
wwv_flow_imp.g_varchar2_table(47) := '1568B55AB17DCBE6F8D0DDEF8987EF7A4F5C7FF515B1616AD2CB0349EF0F8BC59E3DFDAA970316034AB84D01483874919B2730DE8AD8B9795DECDD75557CF4813BE2813DB7C7F5D75E13DB77EC8CCD976E8B0D976C89C90D9B62EDBA0D0B97356B27637C';
wwv_flow_imp.g_varchar2_table(48) := '7CDCA5C60663C5DADBADE5FD153E7BF270CCCF9C6DDE0360C8899A72BAE5DD7B9A925A0E020D16981A6BC5755BD6C5DE1B76C6476EBB26FEFA9EEBE313F7EC8A4FDDB73B3E71F70DF1AB77DD109F283EFEE403B7864B3D0D3E55CCEE537B6F8D8FDDFF9E';
wwv_flow_imp.g_varchar2_table(49) := '78E88EDD71E3F5D7C79AC9A925EFD59D4E27668EF84E914B4225D9410148326831F30A144F0E4479196BB76362623226275DEA6E3051CEB098E5E60DEBE3DA6D97C4BDD76D8B8FDE7B5B5C75D5D531D66E2D7A672F9F01289F095874271B171168CE2605';
wwv_flow_imp.g_varchar2_table(50) := 'A039B394840081A402E55FE4974CB4E3FD375D1EF7EE2E9E0D182BAF89AE3FE6CE9D8ECE9CFF2FA22B50920D8BDF4B92208849800081A608DC70F9D6B8E98A6D8BC629BF6570F9AD8317DDC9C68B0A34E94A05A049D3948500010285C08DD75C11EB2627';
wwv_flow_imp.g_varchar2_table(51) := '8A8FBAFCECCCC7FCEC4C978DAECE22A0006499B49C0408A41158BF764D5CB5FDD2AE79CB370376CE2B005D81BA6E68D60605A059F3948600010211E5F787D8BC3ED68C757F4360C7330091FD870290FD1E203F01028D1298EB74E2E499E93871762666E7';
wwv_flow_imp.g_varchar2_table(52) := '3A5DB329005D69BA6E68DA0605A0691395A7B102E5D3B6E766CEC7BEE3A7E2F17D47E2BB4FED8BFFF7D8B3F1F51F3F157FE6C2A0B80F7CADB894F7876F3EF6743CFBD2CBD1FDD37F44677EBEF865B13D1AFB5012EC750105E07508BF11A8AAC06CF177F4';
wwv_flow_imp.g_varchar2_table(53) := '63078EC79FFCF0E9F81F7FF548FCDFEF3F1A3F78F2E9F8E90BFBE2C5038762FFE1A3F1B20B83E23E70A0B8BC72E4581C39F95A9C9E3EBFF85DBA78A6A068008BEF63EB9B049AF7A102D0BC994AD42081A78E9E89FFFDFDA7E3878FFD2C4E1C3BEA9DDB0D';
wwv_flow_imp.g_varchar2_table(54) := '9AAD2804462DA0008C7A02CE4FA08BC08FF61F8FEF3DFE749C3E71A4D8A3781AA0F8D54F02044623D0C4B32A004D9CAA4CF516289E9AFDC6932FC6A34FFC34E6A6CFD43B8BD5132050590105A0B2A3B1B08C02B373F3F1178F3C15CFED7B39637C990954';
wwv_flow_imp.g_varchar2_table(55) := '54A099CB52009A3957A96A2830373F177FF9E853F1C2A163355CBD25132050370105A06E13B3DE460A9C2FBEF2FFDAF79F887D878F37329F5004EA2CD0D4B52B004D9DAC5CB511383D331B5FFFE1E371E8E4A99ED6DC6AB5E3BACB2E8D8FDFBD2B7EF763';
wwv_flow_imp.g_varchar2_table(56) := 'F7C6BFFDCC83F17B9F7DC885C1C27DE0F77FE37DF1AF7F6D6F7CFCDE9B7BBA3FD929AF80029077F69257406066762EFEEA919FC5A113BD7DF2DFB07E5D7CF1A377C5BFF9D53BE39FBCFFBAF8C4EE2DF1D0D51BE39ECBD7BB3058B80FDCBE635D7CE0DA4D';
wwv_flow_imp.g_varchar2_table(57) := 'F185FBAF8C4BD6ADADC0BDBCEE4B68EEFA1580E6CE56B28A0BCCCCCEC7FFF9FEE371F0F8AB4BAEB4D58AF8CCDE5BE28FFFFE43F137DF73695CB9713CCAEB96BCA11DD20A4C8DB763CBFAC9B4F9055F5A400158DAC81E04FA2EF0DAF46C7CFDC73F8DE3AF';
wwv_flow_imp.g_varchar2_table(58) := '9D5EF2D8ED762BFEE147EE8ADFBAFFAA985A533481256F61070217045A2DF7970B122BFFB5C9B754009A3C5DD92A2970EEFC6C7CE3D1A7E3F0F1934BAE6FACF8E4FFB71EBC253EFD9E6DB1666CC9DDED408000819E0514809EA9EC4860F502AF9E9D89AF';
wwv_flow_imp.g_varchar2_table(59) := '7EEFB13872FC440F076BC5DF7EFF9DF15BF75D19450FE8617FBB1020D05F81661F4D0168F67C5797AED38989317791D521BE71EB670E9D8C3FFDC113F1EAE9B36F5CD9E5A376AB1D9FFFD09EF87B776CF75A7F1723571320B03A017FBBAFCEAFD1B79E9F';
wwv_flow_imp.g_varchar2_table(60) := '9F8BD766E61B9D7150E1E63A11E5FFE2776E762E5E3E7A22FEE2274FC6771E7922CE9CEDE5937F2B3EFB4BB7C7AFDFB6CDD3FE831A90E312E841A0E9BBB49B1E50BE950BCC179FC4BEF3E347E25B8F3D15DF79F2B9F8F613CFBAF460B060F5F833F1E73F';
wwv_flow_imp.g_varchar2_table(61) := '7A22FEE45B3F89AFFFE8A7F1C2A113519682A5A6D16AB5E26FBCF7D6F8FCDD3B62DCA373292EDB0910588580BF62568197E1A6C74E9D8BA70F1C8DA7F71F8C675E3EE4D283C15385D5B3070EC781A327E3ECB9E9E8142FA5F4725F69B55AF11BEFBB35FE';
wwv_flow_imp.g_varchar2_table(62) := 'C13D3B3DEDDF0B987D080C54A0F90757009A3FE3BE242C9F0D7089E8C5A0C7CFF76F994BF1B93F3E71FF2DF1B93D3B6362ACF5966DFE40800081410828008350754C02CB10688D8DC727F7DE16FFF8C12B6362DC27FF65D0D995C0C004321C5801C83065';
wwv_flow_imp.g_varchar2_table(63) := '192B2B303639159FFFD05DF1C5FB2EF74FFD2A3B250B23D04C0105A0997395AAE202E557FD575E7D4DFCCE87F7C4AFDFF2AE58EB9BFC547C6296974B20475A0520C79CA5AC8040ABD58EF213FFD66D5BE333EFBD2D7EEF576E8C5FDBB5317CAB850A0CC7';
wwv_flow_imp.g_varchar2_table(64) := '120824146827CC2C3281A109B4DA633136B5212EBBE2AAF8D8DEDBE3DF7FF6A1F8EFBF7977FCCEBDDBE3B2F5BEEC0F3F08545020CB92DA5982CAB93281DF7CE896F8FDBFF350FCF34FED8D2F7DEA81F8D2275D7A3228BD3EFD60FC8B4FEF8D7FF7C9BBE3';
wwv_flow_imp.g_varchar2_table(65) := '5F7DF886F847F76D8F3D3B26C2B7F55DD97DD1AD0810E8AF8002D05FCF461D6DFDC49AF8DC3D57C6ED97AD8F0FBD7B537CF8DD9BE3C3D7BBF464507A5DB7313E78CDFA78E0F2C9B8F9D2B5FE795FA31E1DC23457204F320520CFAC979FB4D58A13E77C2B';
wwv_flow_imp.g_varchar2_table(66) := 'E0E5C3B905010204AA2FA000547F46A35B615100A67BF9FEB5A35BA133132040A0AF02990EA600649AB6AC0408102040E0750105E07508BF112040804076815CF915805CF3969600010204082C0828000B0C7E2140800081EC02D9F22B00D9262E2F0102';
wwv_flow_imp.g_varchar2_table(67) := '0408102804148002C14F02040810C82E902FBF02906FE6121320408000815000DC090810204020BD4046000520E3D4652640800081F4020A40FABB00000204086417C8995F01C83977A90910204020B9800290FC0E203E010204B20B64CDAF00649DBCDC';
wwv_flow_imp.g_varchar2_table(68) := '04081020905A4001483D7EE1091020905D206F7E0520EFEC252740800081C4020A40E2E18B4E800081EC0299F32B0099A72F3B01020408A4155000D28E5E700204086417C89D5F01C83D7FE90910204020A980029074F06213204020BB40F6FC0A40F67B';
wwv_flow_imp.g_varchar2_table(69) := '80FC0408102090524001483976A1091020905D407E05C07D80000102040824145000120E5D640204086417903F4201702F2040800001020905148084431799000102B905A42F05148052C185000102040824135000920D5C5C020408641790FF82800270';
wwv_flow_imp.g_varchar2_table(70) := 'C1C1AF040810204020958002906ADCC212204020BB80FC3F1750007E2EE17702040810209048400148346C51091020905D40FE37041480372C7C448000010204D208280069462D28010204B20BC8FF660105E0CD1A3E2640800001024904148024831693';
wwv_flow_imp.g_varchar2_table(71) := '000102D905E47FAB8002F0560F7F2240800001022904148014631692000102D905E47FBB8002F076117F2640800001020904148004431691000102D905E47FA78002F04E13D7102040800081C60B28008D1FB180040810C82E20FFC50414808BA9B88E00';
wwv_flow_imp.g_varchar2_table(72) := '01020408345C400168F880C5234080407601F92F2EA0005CDCC5B50408102040A0D1020A40A3C72B1C010204B20BC8DF4D4001E826E37A0204081020D0600105A0C1C3158D000102D905E4EF2EA00074B7B18500010204083456400168EC680523408040';
wwv_flow_imp.g_varchar2_table(73) := '7601F91713500016D3B18D00010204083454400168E860C5224080407601F91717500016F7B19500010204083452400168E45885224080407601F9971250009612B29D00010204083450400168E05045224080407601F9971650009636B2070102040810';
wwv_flow_imp.g_varchar2_table(74) := '689C8002D0B8910A44800081EC02F2F722A000F4A2641F0204081020D0300105A061031587000102D905E4EF4D4001E8CDC95E0408102040A051020A40A3C6290C010204B20BC8DFAB8002D0AB94FD08102040804083041480060D5314020408641790BF';
wwv_flow_imp.g_varchar2_table(75) := '770105A0772B7B122040800081C60828008D19A520040810C82E20FF72041480E568D99700010204083444400168C820C5204080407601F99727A0002CCFCBDE0408102040A011020A4023C62804010204B20BC8BF5C010560B962F62740800001020D10';
wwv_flow_imp.g_varchar2_table(76) := '50001A304411081020905D40FEE50B2800CB37730B0204081020507B0105A0F6231480000102D905E45F898002B01235B7214080000102351750006A3E40CB274080407601F95726A000ACCCCDAD081020408040AD0514805A8FCFE2091020905D40FE95';
wwv_flow_imp.g_varchar2_table(77) := '0A28002B95733B020408102050630105A0C6C3B3740204086417907FE5020AC0CAEDDC920001020408D4564001A8EDE82C9C000102D905E45F8D8002B01A3DB7254080000102351550006A3A38CB264080407601F95727A000ACCECFAD0910204080402D';
wwv_flow_imp.g_varchar2_table(78) := '0514805A8ECDA2091020905D40FED50A2800AB15747B020408102050430105A08643B3640204086417907FF5020AC0EA0D1D810001020408D44E4001A8DDC82C98000102D905E4EF878002D00F45C7204080000102351350006A3630CB254080407601F9';
wwv_flow_imp.g_varchar2_table(79) := 'FB23A000F4C7D151081020408040AD0414805A8DCB62091020905D40FE7E092800FD92741C020408102050230105A046C3B254020408641790BF7F020A40FF2C1D890001020408D4464001A8CDA82C94000102D905E4EFA78002D04FCD861DABD3E944AB';
wwv_flow_imp.g_varchar2_table(80) := '6199C4219045A0139D982B1EC359F2CAB97C010560F9660DBA45F9E9BDD335CFDC5C275AE52E5DF7B0810081AA0ACCCD479C9F2D7EE9BAC04EB1A55E0FF062C17EF6514001E82366ED0E557E766F8F755DF6CCEC5CCC1425A0EB0E36102050598163E7E6';
wwv_flow_imp.g_varchar2_table(81) := 'E2ECCC6CF7F5958FFDF2EF80EE7BD8D2700105A0E1035E2A5E6B7CED22BB74E2F8D9F38B6CB7890081AA0A3C7FE25C9C9AE9FEF85DFCB15FC554D6D46F0105A0DFA2353B5E7BCD44D71597EF0178E6E8E9AEDB6D2040A0BA023F39F06ACC9C9FEBBAC0C5';
wwv_flow_imp.g_varchar2_table(82) := '1EFB5D6F6443A3041480468D73F961DA6B278AD7F9BBBF0EF8D547F7C59133DDFF1259FE19DD820081410B1C38351B5F7DF4A5AEA769B55A513EF6A3463F2CB5FF020A40FF4D6B75C4D69AC988F2B5C02EABFED9FE43F1873F38D065ABAB0910A89AC04C';
wwv_flow_imp.g_varchar2_table(83) := 'D1D7FFE76387E2E8F113DD97563CE6171EFBDDF7B0258180029060C88B456C4FAC8BD6D8F862BBC4FFFAEE93F15F2DB79400000BE049444154DF7E7278D17D6C2440A01A025F79EC707CE59B4F2CBA98F2315F3EF617DDA9521B2D6610020AC020546B74';
wwv_flow_imp.g_varchar2_table(84) := 'CC56BB1DED89A94557DC999F8B3FF8DA8FE35FFEE933F1DC899945F7B5910081D1083C5B3C36BFF4D5A7E33F148FD5B9B945DEFD5F2CAFFCE45F3EF68B0FFD4C2CA000241EFECFA3AFD9B475D1F70194FB9525E0CF7EFC74FCD3AF7C2BFEE05B2FC6F7F6';
wwv_flow_imp.g_varchar2_table(85) := '9F8A7DAF9E8F83A7E7E2E55373B1BF78CDD1659683FBC1D0EE03E5E3EEA5E231F8D8A133F11FBFFD52FCB33FFE76FCF923CFC47C51D8CBC76CB74BABD58E359BB7469D7E58EB60041480C1B8D6EAA8AD3513317EC9F69ED67CF0D5B3F15FBFF144FCEE97';
wwv_flow_imp.g_varchar2_table(86) := 'BF199FFBCFDF882FFCD1F7E2B7BFFCFDF8E2977FE0C2C07D6088F7812FFCD177E3EF168FC1DFFE2FDF883FFCCBC7E3E513677A7A0CAFD9B223FC13C09EA81ABF9302D0F811F716B0FC8A606C6A436F3B177B75E6E76376663A8E9D3811C78E1F7761E03E';
wwv_flow_imp.g_varchar2_table(87) := '30E4FBC0C99327171E83E563B17848F6F4736CDDA618DF78694FFB5667272B199480023028D9DA1DB7156B2FBD22FCDBE0DA0DCE8209F424503EB6D76ED9D9D3BE76CA21D0CE1153CA5E045AE36B62EDB62BA3D51EEB6577FB1020501381F231BDF0D82E';
wwv_flow_imp.g_varchar2_table(88) := '1EE33559F22F96E983C109280083B3ADE591DB6BA762EAEA9B63CDE66DD16AB56A99C1A20910B820D06AB562CD25DB171ED3E563FBC2B57E2570414001B8E0E0D7B709AC79D78E98D8F9EE189B5CFFB62DFE4880401D04CAC7EEC4CEEB170A401DD67BF1';
wwv_flow_imp.g_varchar2_table(89) := '35BA7690020AC020756B7EECF22B8689EDD72CFC05D21E5F1BE5D388AD9667056A3E56CB6FA840ABD58AF2315A3E56CBAFFACBC76E7BED6443D38AD50F0105A01F8A4D3E46BBBD500026AFDC159357DC106BCB42503C3B50BE9BB87C5351ABD8DE6AB5A3';
wwv_flow_imp.g_varchar2_table(90) := 'E5122D06D16210AD6119148FBDF231583E16CB67ECCAC766F9182D1FAB650188627BD4FC87E50F56A03DD8C33B7A93045A636BA2FCA782E5FB0326B65E1913975D1BE5538C13C54B05133BAF2B3E76E1E03E309CFBC0BB8BC7DBF5B1F0182C1E8BE563B2';
wwv_flow_imp.g_varchar2_table(91) := '7C6C968FD126FD9D23CB60051480C1FA36F7E8C55717E55F36E55720E5D38CEDB553E1C2C07D6058F781C9281F7BE563B0B95FE937F7AFCFAA245300AA3209EB204080000102431450008688ED5404081020D09B80BD062FA0000CDED819081020408040';
wwv_flow_imp.g_varchar2_table(92) := 'E5041480CA8DC482081020905D40FE61082800C350760E020408102050310105A06203B11C0204086417907F38020AC0709C9D850001020408544A4001A8D4382C86000102D905E41F968002302C69E7214080000102151250002A340C4B214080407601';
wwv_flow_imp.g_varchar2_table(93) := 'F98727A0000CCFDA9908102040804065041480CA8CC242081020905D40FE610A2800C3D4762E020408102050110105A02283B00C0204086417907FB8020AC070BD9D8D000102040854424001A8C4182C82000102D905E41FB68002306C71E72340800001';
wwv_flow_imp.g_varchar2_table(94) := '02151050002A30044B204080407601F9872FA0000CDFDC190910204080C0C8051480918FC002081020905D40FE51082800A350774E02040810203062010560C403707A0204086417907F34020AC068DC9D9500010204088C5440011829BF9313204020BB';
wwv_flow_imp.g_varchar2_table(95) := '80FCA31250004625EFBC04081020406084020AC008F19D9A000102D905E41F9D8002303A7B67264080000102231350004646EFC4040810C82E20FF2805148051EA3B37010204081018918002302278A7254080407601F9472BA0008CD6DFD90910204080';
wwv_flow_imp.g_varchar2_table(96) := 'C04804148091B03B29010204B20BC83F6A010560D413707E0204081020300201056004E84E49800081EC02F28F5E400118FD0CAC8000010204080C5D4001183AB91312204020BB80FC55105000AA30056B20408000010243165000860CEE74040810C82E';
wwv_flow_imp.g_varchar2_table(97) := '207F350414806ACCC12A0810204080C050051480A1723B19010204B20BC85F150105A02A93B00E0204081020304401056088D84E45800081EC02F257474001A8CE2CAC8400010204080C4D4001181AB51311204020BB80FC55125000AA340D6B21408000';
wwv_flow_imp.g_varchar2_table(98) := '0102431250008604ED34040810C82E207FB50414806ACDC36A0810204080C050041480A1303B09010204B20BC85F350105A06A13B11E0204081020300401056008C84E41800081EC02F2574F4001A8DE4CAC8800010204080C5C40011838B11310204020';
wwv_flow_imp.g_varchar2_table(99) := 'BB80FC55145000AA38156B22408000010203165000060CECF0040810C82E207F350514806ACEC5AA0810204080C04005148081F23A38010204B20BC85F550105A0AA93B12E0204081020304001056080B80E4D800081EC02F257574001A8EE6CAC8C0001';
wwv_flow_imp.g_varchar2_table(100) := '0204080C4C40011818AD0313204020BB80FC55165000AA3C1D6B234080000102031250000604EBB0040810C82E207FB50514806ACFC7EA0810204080C04004148081B03A28010204B20BC85F750105A0EA13B23E0204081020300001056000A80E498000';
wwv_flow_imp.g_varchar2_table(101) := '81EC02F2575F4001A8FE8CAC900001020408F45D4001E83BA90312204020BB80FC75105000EA30256B2440800001027D165000FA0CEA70040810C82E207F3D0414807ACCC92A0910204080405F051480BE723A18010204B20BC85F170105A02E93B24E02';
wwv_flow_imp.g_varchar2_table(102) := '04081020D0470105A08F980E45800081EC02F2D7474001A8CFACAC940001020408F44D4001E81BA50311204020BB80FC75125000EA342D6B2540800001027D125000FA04E930040810C82E207FBD0414807ACDCB6A0910204080405F041480BE303A0801';
wwv_flow_imp.g_varchar2_table(103) := '0204B20BC85F370105A06E13B35E0204081020D0070105A00F880E41800081EC02F2D74F4001A8DFCCAC980001020408AC5A40015835A10310204020BB80FC75145000EA38356B264080000102AB1450005609E8E6040810C82E207F3D0514807ACECDAA';
wwv_flow_imp.g_varchar2_table(104) := '0910204080C0AA04148055F1B931010204B20BC85F570105A0AE93B36E0204081020B00A01056015786E4A800081EC02F2D7574001A8EFECAC9C0001020408AC58400158319D1B12204020BB80FC75165000EA3C3D6B2740800001022B1450005608E766';
wwv_flow_imp.g_varchar2_table(105) := '040810C82E207FBD0514807ACFCFEA0910204080C08A04148015B1B911010204B20BC85F770105A0EE13B47E0204081020B00201056005686E42800081EC02F2D75F4001A8FF0C25204080000102CB165000964DE606040810C82E207F13041480264C51';
wwv_flow_imp.g_varchar2_table(106) := '060204081020B04C010560996076274080407601F99B21A00034638E5210204080008165092800CBE2B233010204B20BC8DF140105A02993948300010204082C4340015806965D091020905D40FEE6082800CD99A5240408102040A0670105A0672A3B12';
wwv_flow_imp.g_varchar2_table(107) := '204020BB80FC4D1250009A344D590810204080408F020A408F5076234080407601F99B25A000346B9ED21020408000819E0414809E98EC44800081EC02F2374D400168DA44E52140800001023D0828003D20D985000102D905E46F9E8002D0BC994A4480';
wwv_flow_imp.g_varchar2_table(108) := '00010204961450009624B203010204B20BC8DF440105A08953958900010204082C21A0002C016433010204B20BC8DF4C0105A09973958A00010204082C2AA0002CCA6323010204B20BC8DF540105A0A993958B00010204082C22A0002C826313010204B2';
wwv_flow_imp.g_varchar2_table(109) := '0BC8DF5C0105A0B9B3958C000102040874155000BAD2D840800081EC02F23759400168F274652340800001025D0414802E30AE264080407601F99B2DA000347BBED21120408000818B0A280017657125010204B20BC8DF740105A0E913968F0001020408';
wwv_flow_imp.g_varchar2_table(110) := '5C444001B8088AAB081020905D40FEE60B2800CD9FB1840408102040E01D020AC03B485C41800081EC02F267105000324C59460204081020F0360105E06D20FE48800081EC02F2E710500072CC594A0204081020F0160105E02D1CFE40800081EC02F267';
wwv_flow_imp.g_varchar2_table(111) := '115000B24C5A4E0204081020F0260105E04D183E244080407601F9F308280079662D290102040810F8858002F00B0A1F10204020BB80FC990414804CD396950001020408BC2EA000BC0EE1370204086417903F978002906BDED212204080008105010560';
wwv_flow_imp.g_varchar2_table(112) := '81C12F040810C82E207F36010520DBC4E52540800001028580025020F849800081EC02F2E7135000F2CD5C620204081020100A803B01010204D20B00C828A000649CBACC04081020905E4001487F17004080407601F9730A280039E72E35010204082417';
wwv_flow_imp.g_varchar2_table(113) := '500092DF01C4274020BB80FC59051480AC93979B00010204520B2800A9C72F3C0102D905E4CF2BA000E49DBDE40408102090584001483C7CD10910C82E207F66010520F3F4652740800081B4020A40DAD10B4E80407601F9730BFC7F000000FFFF82A77C';
wwv_flow_imp.g_varchar2_table(114) := '8D000000064944415403000F7D5BB4276B73310000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(31669283426365690237)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(31669285006288690238)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/security/authorizations/is_admin
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(31900738281186670147)
,p_name=>'Is Admin'
,p_static_id=>'is-admin'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    '   SELECT 1 FROM app_users',
    '   WHERE UPPER(username) = UPPER(:APP_USER)',
    '   AND user_role = ''ADMIN''')))).to_clob
,p_version_scn=>'SH256:ar41KiacaoSK5ce3-I6zg4UwgEOG0hc_SlD_PWp-zco'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20260826063536Z')
,p_updated_on=>wwv_flow_imp.dz('20260826064535Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/bookings_booking_status
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31669348613872691706)
,p_lov_name=>'BOOKINGS.BOOKING_STATUS'
,p_static_id=>'bookings-booking-status'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'BOOKINGS'
,p_return_column_name=>'BOOKING_ID'
,p_display_column_name=>'BOOKING_STATUS'
,p_default_sort_column_name=>'BOOKING_STATUS'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:Nh0Rm9zEym3WLdLTh034G4ELr2ObujoVih72AFezZ80'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31669398065935691767)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(31669398065935691767)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20260825073408Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(31669398727915691769)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(31669398325331691768)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/guests_name
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31669330718328691297)
,p_lov_name=>'GUESTS.NAME'
,p_static_id=>'guests-name'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'GUESTS'
,p_return_column_name=>'GUEST_ID'
,p_display_column_name=>'NAME'
,p_default_sort_column_name=>'NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:dX-YFerLNY2o-CrIFRLB92eCyJ1L7TsC0rZsVZLuzq0'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/user_interface/lovs/rooms_room_number
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(31669331457573691299)
,p_lov_name=>'ROOMS.ROOM_NUMBER'
,p_static_id=>'rooms-room-number'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'ROOMS'
,p_return_column_name=>'ROOM_ID'
,p_display_column_name=>'ROOM_NUMBER'
,p_default_sort_column_name=>'ROOM_NUMBER'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:QSFAwUlxVUHZqpI2SbCbI1Tp8vNuwZ8mzWqtylEDMtk'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(31669285398681690239)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(31669280162481690227)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260827062311Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31917088515066198668)
,p_short_name=>'Book A Room'
,p_static_id=>'book-a-room'
,p_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>15
,p_created_on=>wwv_flow_imp.dz('20260826080341Z')
,p_updated_on=>wwv_flow_imp.dz('20260826080341Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31669344900733691322)
,p_short_name=>'Bookings'
,p_static_id=>'bookings'
,p_link=>'f?p=&APP_ID.:6:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>6
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31678290738001047971)
,p_short_name=>'Dashboard'
,p_static_id=>'dashboard'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20260825083330Z')
,p_updated_on=>wwv_flow_imp.dz('20260825083330Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31885834896633518926)
,p_short_name=>'Guest Booking'
,p_static_id=>'guest-booking'
,p_link=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>13
,p_created_on=>wwv_flow_imp.dz('20260826051839Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051839Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31885836180354518929)
,p_parent_id=>wwv_flow_imp.id(31885834896633518926)
,p_short_name=>'Guest Bookings'
,p_static_id=>'guest-bookings'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
,p_created_on=>wwv_flow_imp.dz('20260826051839Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051839Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31669326983349690908)
,p_short_name=>'Guests'
,p_static_id=>'guests'
,p_link=>'f?p=&APP_ID.:4:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>4
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31669280321867690227)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31669361485231691729)
,p_short_name=>'Payments'
,p_static_id=>'payments'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(31669311931002690509)
,p_short_name=>'Rooms'
,p_static_id=>'rooms'
,p_link=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>2
,p_created_on=>wwv_flow_imp.dz('20260825073355Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073355Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(32170680487242546152)
,p_short_name=>'Welcome'
,p_static_id=>'welcome'
,p_link=>'f?p=&APP_ID.:11:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>11
,p_created_on=>wwv_flow_imp.dz('20260827062311Z')
,p_updated_on=>wwv_flow_imp.dz('20260827062311Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(31669281038877690229)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.1'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>2243014446517417
,p_default_page_template=>4073832297226169690
,p_default_dialog_template=>2101883943284197310
,p_error_template=>2102634289808461002
,p_printer_friendly_template=>4073832297226169690
,p_login_template=>2102634289808461002
,p_default_button_template=>4073839297780169708
,p_default_region_template=>4073835273271169698
,p_default_chart_template=>4073835273271169698
,p_default_form_template=>4073835273271169698
,p_default_reportr_template=>4073835273271169698
,p_default_wizard_template=>4073835273271169698
,p_default_menur_template=>2532939663579242476
,p_default_listr_template=>4073835273271169698
,p_default_irr_template=>2102002977963900996
,p_default_report_template=>2540130677583398057
,p_default_label_template=>1610598304472262251
,p_default_menu_template=>4073839682315169711
,p_default_list_template=>4073837480889169704
,p_default_top_nav_list_temp=>2528231041045349458
,p_default_side_nav_list_temp=>2469215554099805162
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2127905476394690047
,p_default_dialogr_template=>4502917002193490937
,p_default_option_label=>1610598304472262251
,p_default_required_label=>1610598484065263269
,p_default_navbar_list_template=>2849019392706229583
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.1/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4073840274158169736,2000,'universal-theme',8842.261)
,p_version_scn=>'SH256:uQ4JZ2SNi6_ApHjT-kqrEfO43wbND5yijbsMF-bW90c'
,p_version_scn_master=>'SH256:WOPVC8vP1TPWUxczh2dJ4mCZcNGSTzA1cn8DjR2oQjY'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260827065236Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(31669279419740690225)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(31669279748982690226)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Hotel EWU'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'06'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260827062907Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669295323719690253)
,p_plug_name=>'Hotel EWU'
,p_static_id=>'hotel-ewu'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2675494171183407654
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073353Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073353Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669397680977691767)
,p_plug_name=>'Page Navigation'
,p_static_id=>'page-navigation'
,p_region_template_options=>'#DEFAULT#:t-Region--hideHeader js-addHiddenHeadingRoleDesc:t-Region--noUI:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:u-colors:t-Cards--featured t-Cards--block force-fa-lg:t-Cards--displayIcons:t-Cards--4cols:t-Cards--hideBody:t-Cards--animColorFill'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_list_id=>wwv_flow_imp.id(31669395311104691763)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>2888245825625742894
,p_plug_query_num_rows=>15
,p_plug_display_condition_type=>'USER_IS_NOT_PUBLIC_USER'
,p_created_on=>wwv_flow_imp.dz('20260825073408Z')
,p_updated_on=>wwv_flow_imp.dz('20260827055819Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00002
begin
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'Rooms'
,p_alias=>'ROOMS'
,p_step_title=>'Rooms'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260825091503Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669311303947690508)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31669280162481690227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260825073355Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073355Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669305821149690493)
,p_plug_name=>'Rooms'
,p_static_id=>'rooms'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ROOMS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260825073355Z')
,p_updated_on=>wwv_flow_imp.dz('20260825091503Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(31669305939647690493)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:RP:P3_ROOM_ID:\#ROOM_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>31669305939647690493
,p_created_on=>wwv_flow_imp.dz('20260825073355Z')
,p_updated_on=>wwv_flow_imp.dz('20260825091503Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669309224564690504)
,p_db_column_name=>'PRICE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073355Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669307778956690498)
,p_db_column_name=>'ROOM_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Room ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260825073355Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669308145668690501)
,p_db_column_name=>'ROOM_NUMBER'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Room Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073355Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669308802768690502)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073355Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669309681476690505)
,p_db_column_name=>'STATUS'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Status'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'TMPL_THEME_42$BADGE'
,p_heading_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'LABEL', '#STATUS#',
  'LABEL_DISPLAY', 'N',
  'STATE', 'STATUS',
  'VALUE', 'STATUS')).to_clob
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073355Z')
,p_updated_on=>wwv_flow_imp.dz('20260825091503Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31669362406504691731)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROOM_NUMBER:ROOM_TYPE:PRICE:STATUS'
,p_sort_column_1=>'ROOM_NUMBER'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669310018840690506)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31669305821149690493)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&APP_SESSION.::&DEBUG.:3::'
,p_created_on=>wwv_flow_imp.dz('20260825073355Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073355Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31669310419600690507)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(31669305821149690493)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260825073355Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073355Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31669310856356690507)
,p_event_id=>wwv_flow_imp.id(31669310419600690507)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31669305821149690493)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073355Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073355Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00003
begin
wwv_flow_imp_page.create_page(
 p_id=>3
,p_name=>'Room'
,p_alias=>'ROOM'
,p_page_mode=>'MODAL'
,p_step_title=>'Room'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260825073353Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260826075909Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669300573391690359)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073354Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669296794622690354)
,p_plug_name=>'Room'
,p_static_id=>'room'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ROOMS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669300973805690360)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31669300573391690359)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073354Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(31669301421084690360)
,p_button_id=>wwv_flow_imp.id(31669300973805690360)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073354Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669302776745690362)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(31669300573391690359)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_ROOM_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073354Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669301958990690361)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31669300573391690359)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P3_ROOM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260826075909Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669302377878690361)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(31669300573391690359)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P3_ROOM_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073354Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669298201495690357)
,p_name=>'P3_PRICE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31669296794622690354)
,p_item_source_plug_id=>wwv_flow_imp.id(31669296794622690354)
,p_prompt=>'Price'
,p_source=>'PRICE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669297022758690356)
,p_name=>'P3_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31669296794622690354)
,p_item_source_plug_id=>wwv_flow_imp.id(31669296794622690354)
,p_prompt=>'Room ID'
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669297421597690356)
,p_name=>'P3_ROOM_NUMBER'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31669296794622690354)
,p_item_source_plug_id=>wwv_flow_imp.id(31669296794622690354)
,p_prompt=>'Room Number'
,p_source=>'ROOM_NUMBER'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669297895482690357)
,p_name=>'P3_ROOM_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31669296794622690354)
,p_item_source_plug_id=>wwv_flow_imp.id(31669296794622690354)
,p_prompt=>'Room Type'
,p_source=>'ROOM_TYPE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669298682774690357)
,p_name=>'P3_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31669296794622690354)
,p_item_source_plug_id=>wwv_flow_imp.id(31669296794622690354)
,p_prompt=>'Status'
,p_source=>'STATUS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669303902108690363)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>31669303902108690363
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073354Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669303117997690362)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(31669296794622690354)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Room'
,p_static_id=>'initialize-form-room'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>31669303117997690362
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073354Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669303588663690363)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31669296794622690354)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Room'
,p_static_id=>'process-form-room'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31669303588663690363
,p_created_on=>wwv_flow_imp.dz('20260825073354Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073354Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00004
begin
wwv_flow_imp_page.create_page(
 p_id=>4
,p_name=>'Guests'
,p_alias=>'GUESTS'
,p_step_title=>'Guests'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260827050818Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669326392773690907)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31669280162481690227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669322084877690896)
,p_plug_name=>'Guests'
,p_static_id=>'guests'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'GUESTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260827050818Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(31669322110771690896)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:RP:P5_GUEST_ID:\#GUEST_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>31669322110771690896
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260827050818Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669323452796690900)
,p_db_column_name=>'GUEST_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Guest ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669323859380690902)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669324285376690903)
,p_db_column_name=>'PHONE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31669370856289691739)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NAME:PHONE'
,p_sort_column_1=>'NAME'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260827050818Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669325022510690906)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31669322084877690896)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:5::'
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31669325441631690906)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(31669322084877690896)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31669325807642690907)
,p_event_id=>wwv_flow_imp.id(31669325441631690906)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31669322084877690896)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00005
begin
wwv_flow_imp_page.create_page(
 p_id=>5
,p_name=>'Guest'
,p_alias=>'GUEST'
,p_page_mode=>'MODAL'
,p_step_title=>'Guest'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260825073358Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260827050848Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669317950673690892)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669314847437690887)
,p_plug_name=>'Guest'
,p_static_id=>'guest'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'GUESTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669318316231690892)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31669317950673690892)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(31669318854788690893)
,p_button_id=>wwv_flow_imp.id(31669318316231690892)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669320194074690894)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(31669317950673690892)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_GUEST_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669319360883690893)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31669317950673690892)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P5_GUEST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669319787444690894)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(31669317950673690892)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P5_GUEST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669315198668690889)
,p_name=>'P5_GUEST_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31669314847437690887)
,p_item_source_plug_id=>wwv_flow_imp.id(31669314847437690887)
,p_prompt=>'Guest ID'
,p_source=>'GUEST_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669315500478690890)
,p_name=>'P5_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31669314847437690887)
,p_item_source_plug_id=>wwv_flow_imp.id(31669314847437690887)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669315964856690890)
,p_name=>'P5_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31669314847437690887)
,p_item_source_plug_id=>wwv_flow_imp.id(31669314847437690887)
,p_prompt=>'Phone'
,p_source=>'PHONE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669321389406690895)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>31669321389406690895
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669320596947690894)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(31669314847437690887)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Guest'
,p_static_id=>'initialize-form-guest'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>31669320596947690894
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669320917843690895)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31669314847437690887)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Guest'
,p_static_id=>'process-form-guest'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31669320917843690895
,p_created_on=>wwv_flow_imp.dz('20260825073359Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073359Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00006
begin
wwv_flow_imp_page.create_page(
 p_id=>6
,p_name=>'Bookings'
,p_alias=>'BOOKINGS'
,p_step_title=>'Bookings'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260827120339Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669339108710691307)
,p_plug_name=>'Bookings'
,p_static_id=>'bookings'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'BOOKINGS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(31669339209876691307)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:RP:P7_BOOKING_ID:\#BOOKING_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>31669339209876691307
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669340582859691311)
,p_db_column_name=>'BOOKING_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Booking ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669342618176691319)
,p_db_column_name=>'BOOKING_STATUS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Booking Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669341709231691316)
,p_db_column_name=>'CHECK_IN_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Check In Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669342295009691317)
,p_db_column_name=>'CHECK_OUT_DATE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Check Out Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669340934265691313)
,p_db_column_name=>'GUEST_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Guest'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31669330718328691297)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669341393992691315)
,p_db_column_name=>'ROOM_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Room'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31669331457573691299)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31669377779726691746)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GUEST_ID:ROOM_ID:CHECK_IN_DATE:CHECK_OUT_DATE:BOOKING_STATUS'
,p_sort_column_1=>'GUEST_ID'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669344359259691321)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31669280162481690227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31920878208251308329)
,p_plug_name=>'New'
,p_static_id=>'new'
,p_title=>'Stay_Duration_Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT b.booking_id,',
'       g.name AS guest_name,',
'       r.room_number,',
'       r.room_type,',
'       b.check_in_date,',
'       b.check_out_date,',
'       (b.check_out_date - b.check_in_date) AS nights_stayed',
'FROM bookings b',
'JOIN guests g ON b.guest_id = g.guest_id',
'JOIN rooms r ON b.room_id = r.room_id',
'ORDER BY b.booking_id'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Stay_Duration_Report'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260827120328Z')
,p_updated_on=>wwv_flow_imp.dz('20260827120339Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(31920878364347308330)
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>31920878364347308330
,p_created_on=>wwv_flow_imp.dz('20260827120328Z')
,p_updated_on=>wwv_flow_imp.dz('20260827120339Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31920878469164308331)
,p_db_column_name=>'BOOKING_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Booking Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827120328Z')
,p_updated_on=>wwv_flow_imp.dz('20260827120328Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31920878883608308335)
,p_db_column_name=>'CHECK_IN_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Check In Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827120328Z')
,p_updated_on=>wwv_flow_imp.dz('20260827120328Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31920878969030308336)
,p_db_column_name=>'CHECK_OUT_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Check Out Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827120328Z')
,p_updated_on=>wwv_flow_imp.dz('20260827120328Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31920878509664308332)
,p_db_column_name=>'GUEST_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Guest Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827120328Z')
,p_updated_on=>wwv_flow_imp.dz('20260827120328Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31920879063687308337)
,p_db_column_name=>'NIGHTS_STAYED'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nights Stayed'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827120328Z')
,p_updated_on=>wwv_flow_imp.dz('20260827120328Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31920878610749308333)
,p_db_column_name=>'ROOM_NUMBER'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Room Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827120328Z')
,p_updated_on=>wwv_flow_imp.dz('20260827120328Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31920878788400308334)
,p_db_column_name=>'ROOM_TYPE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Room Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260827120328Z')
,p_updated_on=>wwv_flow_imp.dz('20260827120328Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(32251111841266588914)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOOKING_ID:GUEST_NAME:ROOM_NUMBER:ROOM_TYPE:CHECK_IN_DATE:CHECK_OUT_DATE:NIGHTS_STAYED'
,p_created_on=>wwv_flow_imp.dz('20260827120339Z')
,p_updated_on=>wwv_flow_imp.dz('20260827120339Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669343055332691320)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31669339108710691307)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:7::'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31669343411685691321)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(31669339108710691307)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31669343835135691321)
,p_event_id=>wwv_flow_imp.id(31669343411685691321)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31669339108710691307)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00007
begin
wwv_flow_imp_page.create_page(
 p_id=>7
,p_name=>'Booking'
,p_alias=>'BOOKING'
,p_page_mode=>'MODAL'
,p_step_title=>'Booking'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260825073402Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260825082623Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669329994466691295)
,p_plug_name=>'Booking'
,p_static_id=>'booking'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'BOOKINGS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669335056931691303)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669335424835691303)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31669335056931691303)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(31669335980515691304)
,p_button_id=>wwv_flow_imp.id(31669335424835691303)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669337283882691305)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(31669335056931691303)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_BOOKING_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669336458457691304)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31669335056931691303)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P7_BOOKING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669336814869691305)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(31669335056931691303)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P7_BOOKING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669330244682691296)
,p_name=>'P7_BOOKING_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31669329994466691295)
,p_item_source_plug_id=>wwv_flow_imp.id(31669329994466691295)
,p_prompt=>'Booking ID'
,p_source=>'BOOKING_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669332860591691301)
,p_name=>'P7_BOOKING_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31669329994466691295)
,p_item_source_plug_id=>wwv_flow_imp.id(31669329994466691295)
,p_prompt=>'Booking Status'
,p_source=>'BOOKING_STATUS'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669332097221691300)
,p_name=>'P7_CHECK_IN_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31669329994466691295)
,p_item_source_plug_id=>wwv_flow_imp.id(31669329994466691295)
,p_prompt=>'Check In Date'
,p_source=>'CHECK_IN_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669332494861691300)
,p_name=>'P7_CHECK_OUT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31669329994466691295)
,p_item_source_plug_id=>wwv_flow_imp.id(31669329994466691295)
,p_prompt=>'Check Out Date'
,p_source=>'CHECK_OUT_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669330622945691297)
,p_name=>'P7_GUEST_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31669329994466691295)
,p_item_source_plug_id=>wwv_flow_imp.id(31669329994466691295)
,p_prompt=>'Guest'
,p_source=>'GUEST_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'GUESTS.NAME'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669331316502691299)
,p_name=>'P7_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31669329994466691295)
,p_item_source_plug_id=>wwv_flow_imp.id(31669329994466691295)
,p_prompt=>'Room'
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT room_number || '' - '' || room_type || '' ($'' || price || '')'' d, room_id r',
'FROM vw_available_rooms'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825082623Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669338494732691306)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>31669338494732691306
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669337600211691305)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(31669329994466691295)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Booking'
,p_static_id=>'initialize-form-booking'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>31669337600211691305
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669338026930691306)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31669329994466691295)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Booking'
,p_static_id=>'process-form-booking'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31669338026930691306
,p_created_on=>wwv_flow_imp.dz('20260825073403Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073403Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00008
begin
wwv_flow_imp_page.create_page(
 p_id=>8
,p_name=>'Payments'
,p_alias=>'PAYMENTS'
,p_step_title=>'Payments'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>To find data enter a search term into the search dialog, or click on the column headings to limit the records returned.</p>',
'',
'<p>You can perform numerous functions by clicking the <strong>Actions</strong> button. This includes selecting the columns that are displayed / hidden and their display sequence, plus numerous data and format functions.  You can also define additiona'
||'l views of the data using the chart, group by, and pivot options.</p>',
'',
'<p>If you want to save your customizations select report, or click download to unload the data. Enter you email address and time frame under subscription to be sent the data on a regular basis.<p>',
'',
'<p>For additional information click Help at the bottom of the Actions menu.</p> ',
'',
'<p>Click the <strong>Reset</strong> button to reset the interactive report back to the default settings.</p>'))
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669360881240691728)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31669280162481690227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669356169057691714)
,p_plug_name=>'Payments'
,p_static_id=>'payments'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PAYMENTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(31669356298164691714)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:RP:P9_PAYMENT_ID:\#PAYMENT_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>31669356298164691714
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669358306519691722)
,p_db_column_name=>'AMOUNT'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G999G999G999G999G999G990'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669357917918691721)
,p_db_column_name=>'BOOKING_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Booking'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_imp.id(31669348613872691706)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669358748430691724)
,p_db_column_name=>'PAYMENT_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Payment Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669357534218691719)
,p_db_column_name=>'PAYMENT_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Payment ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31669359165692691725)
,p_db_column_name=>'PAYMENT_METHOD'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Payment Method'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31669387198153691755)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BOOKING_ID:AMOUNT:PAYMENT_DATE:PAYMENT_METHOD'
,p_sort_column_1=>'BOOKING_ID'
,p_sort_direction_1=>'ASC'
,p_created_on=>wwv_flow_imp.dz('20260825073408Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669359599435691727)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31669356169057691714)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:9::'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(31669359955006691727)
,p_name=>'Edit Report - Dialog Closed'
,p_static_id=>'edit-report-dialog-closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(31669356169057691714)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(31669360312901691728)
,p_event_id=>wwv_flow_imp.id(31669359955006691727)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_static_id=>'native-refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(31669356169057691714)
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'maintain_pagination', 'N')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00009
begin
wwv_flow_imp_page.create_page(
 p_id=>9
,p_name=>'Payment'
,p_alias=>'PAYMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'Payment'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>1662662927374504442
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260825073406Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669352096251691710)
,p_plug_name=>'Buttons'
,p_static_id=>'buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2127905476394690047
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_item_display_point=>'ABOVE'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669347848892691704)
,p_plug_name=>'Payment'
,p_static_id=>'payment'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4502917002193490937
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'PAYMENTS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669352496672691710)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31669352096251691710)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'DEFINED_BY_DA_ACTION'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_component_da_action(
 p_id=>wwv_flow_imp.id(31669352913124691711)
,p_button_id=>wwv_flow_imp.id(31669352496672691710)
,p_action_sequence=>10
,p_action=>'NATIVE_DIALOG_CANCEL'
,p_static_id=>'native-dialog-cancel'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669354254814691712)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(31669352096251691710)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_PAYMENT_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669353497589691711)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31669352096251691710)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P9_PAYMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669353816242691712)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(31669352096251691710)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P9_PAYMENT_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669349219231691707)
,p_name=>'P9_AMOUNT'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31669347848892691704)
,p_item_source_plug_id=>wwv_flow_imp.id(31669347848892691704)
,p_prompt=>'Amount'
,p_source=>'AMOUNT'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669348599514691706)
,p_name=>'P9_BOOKING_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31669347848892691704)
,p_item_source_plug_id=>wwv_flow_imp.id(31669347848892691704)
,p_prompt=>'Booking'
,p_source=>'BOOKING_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'BOOKINGS.BOOKING_STATUS'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669349674307691708)
,p_name=>'P9_PAYMENT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31669347848892691704)
,p_item_source_plug_id=>wwv_flow_imp.id(31669347848892691704)
,p_prompt=>'Payment Date'
,p_source=>'PAYMENT_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669348107481691705)
,p_name=>'P9_PAYMENT_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31669347848892691704)
,p_item_source_plug_id=>wwv_flow_imp.id(31669347848892691704)
,p_prompt=>'Payment ID'
,p_source=>'PAYMENT_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_field_template=>1610598484065263269
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669350114670691708)
,p_name=>'P9_PAYMENT_METHOD'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31669347848892691704)
,p_item_source_plug_id=>wwv_flow_imp.id(31669347848892691704)
,p_prompt=>'Payment Method'
,p_source=>'PAYMENT_METHOD'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073408Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669355404774691714)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_static_id=>'close-dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>31669355404774691714
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669354629845691713)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(31669347848892691704)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Payment'
,p_static_id=>'initialize-form-payment'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>31669354629845691713
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669355034478691713)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31669347848892691704)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Payment'
,p_static_id=>'process-form-payment'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31669355034478691713
,p_created_on=>wwv_flow_imp.dz('20260825073407Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073407Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Dashboard'
,p_alias=>'DASHBOARD'
,p_step_title=>'Dashboard'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20260825083330Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260827115922Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31920877721104308324)
,p_plug_name=>'Avg_Stay_Duration_Chart'
,p_static_id=>'avg-stay-duration-chart'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>40
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260827115922Z')
,p_updated_on=>wwv_flow_imp.dz('20260827115922Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(31920877837248308325)
,p_region_id=>wwv_flow_imp.id(31920877721104308324)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20260827115922Z')
,p_updated_on=>wwv_flow_imp.dz('20260827115922Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(31920877933085308326)
,p_chart_id=>wwv_flow_imp.id(31920877837248308325)
,p_static_id=>'series1'
,p_seq=>10
,p_name=>'Series1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT r.room_type AS label, ROUND(AVG(b.check_out_date - b.check_in_date),1) AS value',
'FROM bookings b',
'JOIN rooms r ON b.room_id = r.room_id',
'GROUP BY r.room_type'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260827115922Z')
,p_updated_on=>wwv_flow_imp.dz('20260827115922Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(31920878024065308327)
,p_chart_id=>wwv_flow_imp.id(31920877837248308325)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260827115922Z')
,p_updated_on=>wwv_flow_imp.dz('20260827115922Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(31920878185467308328)
,p_chart_id=>wwv_flow_imp.id(31920877837248308325)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260827115922Z')
,p_updated_on=>wwv_flow_imp.dz('20260827115922Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31678290156622047969)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31669280162481690227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260825083330Z')
,p_updated_on=>wwv_flow_imp.dz('20260825083330Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31678290993659048093)
,p_plug_name=>'Chart 1'
,p_static_id=>'chart-1'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260825083331Z')
,p_updated_on=>wwv_flow_imp.dz('20260825084520Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(31678291226478048094)
,p_region_id=>wwv_flow_imp.id(31678290993659048093)
,p_chart_type=>'area'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260825083331Z')
,p_updated_on=>wwv_flow_imp.dz('20260825084520Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(31678292986859048097)
,p_chart_id=>wwv_flow_imp.id(31678291226478048094)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT TO_CHAR(payment_date,''YYYY-MM'') AS label, SUM(amount) AS value',
'   FROM payments',
'   GROUP BY TO_CHAR(payment_date,''YYYY-MM'')',
'   ORDER BY label'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260825083331Z')
,p_updated_on=>wwv_flow_imp.dz('20260825084520Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(31678291704083048095)
,p_chart_id=>wwv_flow_imp.id(31678291226478048094)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260825083331Z')
,p_updated_on=>wwv_flow_imp.dz('20260825083331Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(31678292360338048096)
,p_chart_id=>wwv_flow_imp.id(31678291226478048094)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260825083331Z')
,p_updated_on=>wwv_flow_imp.dz('20260825083331Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31678293686082048225)
,p_plug_name=>'Chart 2'
,p_static_id=>'chart-2'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260825083332Z')
,p_updated_on=>wwv_flow_imp.dz('20260825084720Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(31678293921349048226)
,p_region_id=>wwv_flow_imp.id(31678293686082048225)
,p_chart_type=>'pie'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
,p_created_on=>wwv_flow_imp.dz('20260825083332Z')
,p_updated_on=>wwv_flow_imp.dz('20260825084720Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(31678294432587048227)
,p_chart_id=>wwv_flow_imp.id(31678293921349048226)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT r.room_type AS label, COUNT(*) AS value',
'   FROM bookings b',
'   JOIN rooms r ON b.room_id = r.room_id',
'   GROUP BY r.room_type'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'auto'
,p_items_label_display_as=>'LABEL'
,p_created_on=>wwv_flow_imp.dz('20260825083332Z')
,p_updated_on=>wwv_flow_imp.dz('20260825084720Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31678296745070048353)
,p_plug_name=>'Chart 3'
,p_static_id=>'chart-3'
,p_title=>'Available rooms by type'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20260825083334Z')
,p_updated_on=>wwv_flow_imp.dz('20260825085204Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(31678297014025048354)
,p_region_id=>wwv_flow_imp.id(31678296745070048353)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_created_on=>wwv_flow_imp.dz('20260825083334Z')
,p_updated_on=>wwv_flow_imp.dz('20260825085204Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(31678298785152048357)
,p_chart_id=>wwv_flow_imp.id(31678297014025048354)
,p_static_id=>'series-1'
,p_seq=>10
,p_name=>'Series 1'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT room_type AS label, COUNT(*) AS value',
'   FROM vw_available_rooms',
'   GROUP BY room_type'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20260825083334Z')
,p_updated_on=>wwv_flow_imp.dz('20260825085204Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(31678297527789048355)
,p_chart_id=>wwv_flow_imp.id(31678297014025048354)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20260825083334Z')
,p_updated_on=>wwv_flow_imp.dz('20260825083334Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(31678298187967048356)
,p_chart_id=>wwv_flow_imp.id(31678297014025048354)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20260825083334Z')
,p_updated_on=>wwv_flow_imp.dz('20260825083334Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00011
begin
wwv_flow_imp_page.create_page(
 p_id=>11
,p_name=>'Welcome'
,p_alias=>'WELCOME'
,p_step_title=>'Welcome'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20260827062311Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260827121147Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(32170679854432546150)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31669280162481690227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260827062311Z')
,p_updated_on=>wwv_flow_imp.dz('20260827062311Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31920879156831308338)
,p_plug_name=>'Special Note'
,p_static_id=>'new'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source=>'<p>To cancel or modify your booking, please contact us at 01907556801 or Email 2024-3-60-365@std.ewubd.edu</p>'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260827121039Z')
,p_updated_on=>wwv_flow_imp.dz('20260827121147Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31920877642693308323)
,p_button_sequence=>20
,p_button_name=>'Admin_Login'
,p_static_id=>'admin-login'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Admin Login'
,p_button_redirect_url=>'f?p=&APP_ID.:9999:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260827062727Z')
,p_updated_on=>wwv_flow_imp.dz('20260827062727Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31920877542171308322)
,p_button_sequence=>10
,p_button_name=>'Book_A_Room'
,p_static_id=>'book-a-room_1'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Book A Room'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260827062727Z')
,p_updated_on=>wwv_flow_imp.dz('20260827062727Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00013
begin
wwv_flow_imp_page.create_page(
 p_id=>13
,p_name=>'Guest Booking'
,p_alias=>'GUEST-BOOKING'
,p_step_title=>'Guest Booking'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260827050918Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31885834949506518926)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31669280162481690227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260826051839Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051839Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31885831222013518913)
,p_plug_name=>'Guest Booking'
,p_static_id=>'guest-booking'
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'GUESTS'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20260826051839Z')
,p_updated_on=>wwv_flow_imp.dz('20260827050918Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(31885831393919518913)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:RP:P14_GUEST_ID:\#GUEST_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_internal_uid=>31885831393919518913
,p_created_on=>wwv_flow_imp.dz('20260826051839Z')
,p_updated_on=>wwv_flow_imp.dz('20260827050918Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31885832543739518917)
,p_db_column_name=>'GUEST_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Guest ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_created_on=>wwv_flow_imp.dz('20260826051839Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051839Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31885832902905518919)
,p_db_column_name=>'NAME'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260826051839Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051839Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(31885833374980518920)
,p_db_column_name=>'PHONE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Phone'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20260826051839Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051839Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(31886442493577220071)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'GUEST_ID:NAME:PHONE'
,p_created_on=>wwv_flow_imp.dz('20260826052035Z')
,p_updated_on=>wwv_flow_imp.dz('20260827050918Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31885834136226518923)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31885831222013518913)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:14::'
,p_created_on=>wwv_flow_imp.dz('20260826051839Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051839Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00014
begin
wwv_flow_imp_page.create_page(
 p_id=>14
,p_name=>'Guest Bookings'
,p_alias=>'GUEST-BOOKINGS'
,p_step_title=>'Guest Bookings'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_dialog_chained=>'N'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260827051920Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31885835540154518928)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31669280162481690227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260826051839Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051839Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31885813618237518763)
,p_plug_name=>'Form on GUESTS'
,p_static_id=>'form-on-guests'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'GUESTS'
,p_query_order_by_type=>'STATIC'
,p_query_order_by=>'GUEST_ID'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31885841662059521294)
,p_plug_name=>'Guest Bookings'
,p_static_id=>'guest-bookings'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2102002977963900996
,p_plug_display_sequence=>30
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'BOOKINGS'
,p_query_where=>'GUEST_ID = :P14_GUEST_ID'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P14_GUEST_ID'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'P14_GUEST_ID'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20260826051903Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051903Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31885843493708521302)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20260826051903Z')
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31885842907222521300)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20260826051903Z')
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31885844464511521304)
,p_name=>'BOOKING_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOKING_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260826051903Z')
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31885849473722521315)
,p_name=>'BOOKING_STATUS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BOOKING_STATUS'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Booking Status'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260826051903Z')
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31885847411359521310)
,p_name=>'CHECK_IN_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_IN_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Check In Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260826051903Z')
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31885848453629521313)
,p_name=>'CHECK_OUT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'CHECK_OUT_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Check Out Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260826051903Z')
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31885845448190521306)
,p_name=>'GUEST_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'GUEST_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P14_GUEST_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20260826051903Z')
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(31885846486253521308)
,p_name=>'ROOM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROOM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Room Id'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20260826051903Z')
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(31885841781150521295)
,p_internal_uid=>31885841781150521295
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20260826051903Z')
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(31885842424040521298)
,p_interactive_grid_id=>wwv_flow_imp.id(31885841781150521295)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20260826051903Z')
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(31885842504029521298)
,p_report_id=>wwv_flow_imp.id(31885842424040521298)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31885843981633521304)
,p_view_id=>wwv_flow_imp.id(31885842504029521298)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(31885843493708521302)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31885844940361521306)
,p_view_id=>wwv_flow_imp.id(31885842504029521298)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(31885844464511521304)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31885845991499521308)
,p_view_id=>wwv_flow_imp.id(31885842504029521298)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(31885845448190521306)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31885846989776521310)
,p_view_id=>wwv_flow_imp.id(31885842504029521298)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(31885846486253521308)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31885847958710521312)
,p_view_id=>wwv_flow_imp.id(31885842504029521298)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(31885847411359521310)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31885848974200521314)
,p_view_id=>wwv_flow_imp.id(31885842504029521298)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(31885848453629521313)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(31885849919002521316)
,p_view_id=>wwv_flow_imp.id(31885842504029521298)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(31885849473722521315)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31885818928782518773)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31885820587804518774)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P14_GUEST_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31885819620390518773)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P14_GUEST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31885821043901518774)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_button_name=>'GET_NEXT_GUEST_ID'
,p_static_id=>'get-next-guest-id'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Next'
,p_button_position=>'NEXT'
,p_button_condition=>'P14_GUEST_ID_NEXT'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31885820955666518774)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_button_name=>'GET_PREVIOUS_GUEST_ID'
,p_static_id=>'get-previous-guest-id'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>2350584059425431644
,p_button_image_alt=>'Previous'
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P14_GUEST_ID_PREV'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31885820000736518773)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P14_GUEST_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31885822123473518775)
,p_branch_action=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.::P14_GUEST_ID:&P14_GUEST_ID_NEXT.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(31885821043901518774)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31885822739924518775)
,p_branch_action=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.::P14_GUEST_ID:&P14_GUEST_ID_PREV.'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_imp.id(31885820955666518774)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31885823125769518775)
,p_branch_action=>'f?p=&APP_ID.:13:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31885814050014518765)
,p_name=>'P14_GUEST_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_item_source_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_source=>'GUEST_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31885818615825518772)
,p_name=>'P14_GUEST_ID_COUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_cSize=>30
,p_tag_attributes=>'class="fielddata"'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'send_on_page_submit', 'N')).to_clob
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31885814882993518766)
,p_name=>'P14_GUEST_ID_NEXT'
,p_is_query_only=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31885814488837518766)
,p_name=>'P14_GUEST_ID_PREV'
,p_is_query_only=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31885815279159518768)
,p_name=>'P14_NAME'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_item_source_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_prompt=>'Name'
,p_source=>'NAME'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31885815807204518769)
,p_name=>'P14_PHONE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_item_source_plug_id=>wwv_flow_imp.id(31885813618237518763)
,p_prompt=>'Phone'
,p_source=>'PHONE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31885850431043521318)
,p_process_sequence=>35
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31885841662059521294)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Guest Bookings - Save Interactive Grid Data'
,p_static_id=>'guest-bookings-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31885850431043521318
,p_created_on=>wwv_flow_imp.dz('20260826051903Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051903Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31885823561447518776)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(31885813618237518763)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Form on GUESTS'
,p_static_id=>'initialize-form-form-on-guests'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', 'P14_GUEST_ID_COUNT',
  'next_primary_key_items', 'P14_GUEST_ID_NEXT',
  'previous_primary_key_items', 'P14_GUEST_ID_PREV')).to_clob
,p_internal_uid=>31885823561447518776
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31885824289397518776)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31885813618237518763)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Form on GUESTS'
,p_static_id=>'process-form-form-on-guests'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31885824289397518776
,p_created_on=>wwv_flow_imp.dz('20260826051838Z')
,p_updated_on=>wwv_flow_imp.dz('20260826051838Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_00015
begin
wwv_flow_imp_page.create_page(
 p_id=>15
,p_name=>'Book A Room'
,p_alias=>'BOOK-A-ROOM'
,p_step_title=>'Book A Room'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4073832297226169690
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20260826080341Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260827072729Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31917088723763198771)
,p_plug_name=>'Book A Room'
,p_static_id=>'book-a-room'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4073835273271169698
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'BOOKINGS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_ajax_items_to_submit=>'P15_PAYMENT_METHOD'
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260827054233Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31917087953660198667)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2532939663579242476
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(31669280162481690227)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4073839682315169711
,p_created_on=>wwv_flow_imp.dz('20260826080341Z')
,p_updated_on=>wwv_flow_imp.dz('20260826080341Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31917093288813198776)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260826080342Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31917094560474198777)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P15_BOOKING_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260827071857Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31917093750111198777)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P15_BOOKING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260826080342Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31917094125039198777)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P15_BOOKING_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260826080342Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(31917094981884198778)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260827072729Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31920876060726308307)
,p_name=>'P15_AMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_prompt=>'Amount($)'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260827054233Z')
,p_updated_on=>wwv_flow_imp.dz('20260827054233Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31917089088145198772)
,p_name=>'P15_BOOKING_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_item_source_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_source=>'BOOKING_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260826080342Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31917091084111198774)
,p_name=>'P15_BOOKING_STATUS'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_item_source_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_item_default=>'Confirmed'
,p_source=>'BOOKING_STATUS'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260826081647Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31917090265420198774)
,p_name=>'P15_CHECK_IN_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_item_source_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_prompt=>'Check In Date'
,p_source=>'CHECK_IN_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260826080342Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31917090664278198774)
,p_name=>'P15_CHECK_OUT_DATE'
,p_source_data_type=>'DATE'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_item_source_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_prompt=>'Check Out Date'
,p_source=>'CHECK_OUT_DATE'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260826080342Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31917089486372198773)
,p_name=>'P15_GUEST_ID'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_item_source_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_source=>'GUEST_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260826082447Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31920875416878308301)
,p_name=>'P15_GUEST_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_prompt=>'Your Name'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260826082447Z')
,p_updated_on=>wwv_flow_imp.dz('20260826082447Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31920875580212308302)
,p_name=>'P15_GUEST_PHONE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_prompt=>'Phone Number'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260826082716Z')
,p_updated_on=>wwv_flow_imp.dz('20260826082716Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31920876123223308308)
,p_name=>'P15_PAYMENT_METHOD'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_prompt=>'Payment Method'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Cash;Cash,Card;Card,Online;Online'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1610598304472262251
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260827054233Z')
,p_updated_on=>wwv_flow_imp.dz('20260827054233Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31917089897158198773)
,p_name=>'P15_ROOM_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_item_source_plug_id=>wwv_flow_imp.id(31917088723763198771)
,p_prompt=>'Room Id'
,p_source=>'ROOM_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   SELECT room_number || '' - '' || room_type || '' ($'' || price || '')'' d, room_id r',
'   FROM vw_available_rooms'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P15_PAYMENT_METHOD'
,p_ajax_items_to_submit=>'P15_PAYMENT_METHOD'
,p_ajax_optimize_refresh=>'Y'
,p_field_template=>1610598484065263269
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260827054233Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31920875781946308304)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Find or Create Guest'
,p_static_id=>'find-or-create-guest'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_guest_id NUMBER;',
'BEGIN',
'    BEGIN',
'        SELECT guest_id INTO v_guest_id',
'        FROM guests',
'        WHERE phone = :P15_GUEST_PHONE;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            INSERT INTO guests (name, phone)',
'            VALUES (:P15_GUEST_NAME, :P15_GUEST_PHONE)',
'            RETURNING guest_id INTO v_guest_id;',
'    END;',
'    :P15_GUEST_ID := v_guest_id;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31920875781946308304
,p_created_on=>wwv_flow_imp.dz('20260826084748Z')
,p_updated_on=>wwv_flow_imp.dz('20260826085313Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31920875972323308306)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Guest Handler'
,p_static_id=>'guest-handler'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_guest_id NUMBER;',
'BEGIN',
'    BEGIN',
'        SELECT guest_id INTO v_guest_id',
'        FROM guests',
'        WHERE phone = :P15_GUEST_PHONE;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            INSERT INTO guests (name, phone, email)',
'            VALUES (:P15_GUEST_NAME, :P15_GUEST_PHONE, :P15_GUEST_EMAIL)',
'            RETURNING guest_id INTO v_guest_id;',
'    END;',
'    :P15_GUEST_ID := v_guest_id;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31920875972323308306
,p_created_on=>wwv_flow_imp.dz('20260826090710Z')
,p_updated_on=>wwv_flow_imp.dz('20260826090848Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31917095351180198779)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(31917088723763198771)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Book A Room'
,p_static_id=>'initialize-form-book-a-room'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', 'P15_PAYMENT_METHOD',
  'next_primary_key_items', 'P15_PAYMENT_METHOD',
  'previous_primary_key_items', 'P15_PAYMENT_METHOD')).to_clob
,p_internal_uid=>31917095351180198779
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260827054233Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31920876236589308309)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert Payment'
,p_static_id=>'insert-payment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT INTO payments (booking_id, amount, payment_method)',
'VALUES (:P15_BOOKING_ID, :P15_AMOUNT, :P15_PAYMENT_METHOD);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31920876236589308309
,p_created_on=>wwv_flow_imp.dz('20260827054552Z')
,p_updated_on=>wwv_flow_imp.dz('20260827054552Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31917095742378198779)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(31917088723763198771)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Book A Room'
,p_static_id=>'process-form-book-a-room'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'   Your room has been booked successfully! We look forward to hosting you.'
,p_internal_uid=>31917095742378198779
,p_created_on=>wwv_flow_imp.dz('20260826080342Z')
,p_updated_on=>wwv_flow_imp.dz('20260827071857Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Hotel EWU - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2102634289808461002
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(31669288317275690243)
,p_plug_name=>'Hotel EWU'
,p_static_id=>'hotel-ewu'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2675634334296186762
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(31669289975318690247)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(31669288317275690243)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4073839297780169708
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669289257547690246)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(31669288317275690243)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669289643796690246)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(31669288317275690243)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2042262243893469891
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(31669288852964690245)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(31669288317275690243)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2042262243893469891
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669294073160690251)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31669294073160690251
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669293671948690250)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>31669293671948690250
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669290306120690247)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31669290306120690247
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(31669291301818690248)
,p_page_process_id=>wwv_flow_imp.id(31669290306120690247)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(31669291863177690249)
,p_page_process_id=>wwv_flow_imp.id(31669290306120690247)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(31669290854132690248)
,p_page_process_id=>wwv_flow_imp.id(31669290306120690247)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(31669292258293690249)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>31669292258293690249
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(31669293253735690250)
,p_page_process_id=>wwv_flow_imp.id(31669292258293690249)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(31669292729771690249)
,p_page_process_id=>wwv_flow_imp.id(31669292258293690249)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20260825073352Z')
,p_updated_on=>wwv_flow_imp.dz('20260825073352Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/deployment/definition
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp_shared.create_install(
 p_id=>wwv_flow_imp.id(32233731504106828466)
,p_deinstall_script_clob=>wwv_flow_imp.varchar2_to_clob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20260827104839Z')
,p_last_updated_on=>wwv_flow_imp.dz('20260827104839Z')
,p_created_by=>'2024-3-60-365@STD.EWUBD.EDU'
,p_last_updated_by=>'2024-3-60-365@STD.EWUBD.EDU'
);
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
