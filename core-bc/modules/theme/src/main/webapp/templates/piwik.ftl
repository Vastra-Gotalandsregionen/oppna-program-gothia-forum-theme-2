<#if theme_display.getThemeSetting("enable-piwik") == "true">
    <#assign siteId = theme_display.getThemeSetting("piwik-site-id") />

    <!-- Piwik -->
    <script type="text/javascript">
        var _paq = _paq || [];
        _paq.push(['trackPageView']);
        _paq.push(['enableLinkTracking']);
        (function() {
            var u=(("https:" == document.location.protocol) ? "https" : "http") + "://piwik-ext.vgregion.se/";
            _paq.push(['setTrackerUrl', u+'piwik.php']);
            _paq.push(['setSiteId', ${siteId}]);
            var d=document, g=d.createElement('script'), s=d.getElementsByTagName('script')[0]; g.type='text/javascript';
            g.defer=true; g.async=true; g.src=u+'piwik.js'; s.parentNode.insertBefore(g,s);
        })();
    </script>
    <noscript><p><img src="http://piwik-ext.vgregion.se/piwik.php?idsite=${siteId}" style="border:0;" alt="" /></p></noscript>
    <!-- End Piwik Code -->
</#if>