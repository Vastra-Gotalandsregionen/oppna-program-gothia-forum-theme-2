
<#if social_add_this_services?has_content && social_add_this_profile_id?has_content>

	<#assign social_position = "right" />
	<#assign social_ui_language = "sv" />

	<#if w3c_language_id == "en-US">
		<#assign social_ui_language = "en" />
	</#if>

  <script type="text/javascript" src="//s7.addthis.com/js/300/addthis_widget.js#pubid=${social_add_this_profile_id}"></script>
  <script type="text/javascript">

    addthis_config = {
      'ui_language': '${social_ui_language}'
		};

		addthis.layers({
      'theme' : 'transparent',
      'share' : {
        'position' : '${social_position}',
        'services' : '${social_add_this_services}',
        'offset' : {
          'top': '200px'
        }
      }
    });


  </script>


</#if>
