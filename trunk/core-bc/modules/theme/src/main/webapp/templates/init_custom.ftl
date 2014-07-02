<#------ Taglibs ----------------------------------------------------------------------------------------------------------------->

<#assign liferay_ui=PortalJspTagLibs["/WEB-INF/tld/liferay-ui.tld"]>
<#assign aui=PortalJspTagLibs["/WEB-INF/tld/liferay-aui.tld"]>

<#------ Define services ----------------------------------------------------------------------------------------------------------------->

<#assign expandoValueLocalService = serviceLocator.findService("com.liferay.portlet.expando.service.ExpandoValueLocalService") />
<#assign layoutLocalService = serviceLocator.findService("com.liferay.portal.service.LayoutLocalService") />
<#assign journalArticleLocalService = serviceLocator.findService("com.liferay.portlet.journal.service.JournalArticleLocalService") />

<#assign portletItemLocalService = serviceLocator.findService("com.liferay.portal.service.PortletItemLocalService") />
<#assign portletPreferencesLocalService = serviceLocator.findService("com.liferay.portal.service.PortletPreferencesLocalService") />
<#assign userGroupLocalService = serviceLocator.findService("com.liferay.portal.service.UserGroupLocalService") />

<#------ Define variables ----------------------------------------------------------------------------------------------------------------->

<#assign show_breadcrumbs = true />

<#------ Expando values ----------------------------------------------------------------------------------------------------------------->

<#--
<#assign google_maps_api_key = expandoValueLocalService.getData(company_id, "com.liferay.portal.model.Group", "CUSTOM_FIELDS", "google-maps-api-key", base_group_id, "")  />
-->

<#------ Theme Settings ----------------------------------------------------------------------------------------------------------------->

<#--
-->
	<#if theme_display.getThemeSetting("show-breadcrumbs") == "false">
		<#assign show_breadcrumbs = false />
	</#if>


<#------ Permissions Checker ----------------------------------------------------------------------------------------------------------------->

<#assign permission_checker = theme_display.getPermissionChecker() />

<#assign is_scope_group_admin = permission_checker.isGroupAdmin(group_id) />
<#assign is_scope_group_owner = permission_checker.isGroupOwner(group_id) />

<#assign is_omni_admin = permission_checker.isOmniadmin() />


<#------ Page Edit Mode ----------------------------------------------------------------------------------------------------------------->
<#------ Whether or not portlet titles and other UI components should be displayed. Also used to show/hide dockbar.  ------>

<#assign show_page_edit = false />

<#-- Include Omni Admin -->
<#assign show_page_edit = show_page_edit || is_omni_admin />

<#-- Include Scope Group Owner -->
<#assign show_page_edit = show_page_edit || is_scope_group_owner />

<#-- Include Scope Group Admin -->
<#assign show_page_edit = show_page_edit || is_scope_group_admin />

<#if show_page_edit>
	<#assign css_class = css_class + " page-edit dockbar-split" />
</#if>

<#assign foo = "boo" />
