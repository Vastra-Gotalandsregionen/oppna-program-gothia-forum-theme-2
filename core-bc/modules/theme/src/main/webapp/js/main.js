/*Liferay.on('allPortletsReady',function() {

});*/


AUI().ready('aui-base', 'gothia-theme-main', function(A) {

    var gothiaThemeMain = new A.GothiaThemeMain({
    }).render();

});

AUI().ready('aui-base', 'aui-custom-select-filter-plugin', function(A) {
  A.all('.js-select-filter').plug(A.Plugin.SelectFilter);
});
