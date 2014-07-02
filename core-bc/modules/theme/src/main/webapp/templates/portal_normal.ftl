<!DOCTYPE html>

<#include init />

<html class="dockbar-split ${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title} - ${company_name}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />
	
	<script type="text/javascript" src="${javascript_folder}/pojs.js"></script>
	
	${theme.include(top_head_include)}
</head>

<body class="${css_class}">

<a href="#main-content" id="skip-to-content"><@liferay.language key="skip-to-content" /></a>

${theme.include(body_top_include)}

<#if show_page_edit>
	<@liferay.dockbar />
</#if>

<header class="main-header container">

	<div class="header-inner">
		<div class="logotype">
			<a href="/">

				<#assign logo_src = images_folder + "/theme/logo/gothia-forum-logo.png" />
				<img src="${logo_src}">
			</a>
		</div>
	</div>

	<#if has_navigation || is_signed_in>
		<#include "${full_templates_path}/navigation.ftl" />
	</#if>
	
</header>

<div id="wrapper" class="container">

	<#if show_breadcrumbs>
		<nav id="breadcrumbs">
			<@liferay.breadcrumbs />
		</nav>
	</#if>


	<#if selectable>
		${theme.include(content_include)}
	<#else>
		${portletDisplay.recycle()}

		${portletDisplay.setTitle(the_title)}

		${theme.wrapPortlet("portlet.ftl", content_include)}
	</#if>
</div>


<#include "${full_templates_path}/footer.ftl" />

${theme.include(body_bottom_include)}

${theme.include(bottom_include)}

<#if google_maps_api_key?has_content>
	<script type="text/javascript" src="//maps.googleapis.com/maps/api/js?key=${google_maps_api_key}"></script>
</#if>

<script type="text/javascript" src="${javascript_folder}/respond.js"></script>

<#include "${full_templates_path}/social_sharing.ftl" />

</body>
</html>