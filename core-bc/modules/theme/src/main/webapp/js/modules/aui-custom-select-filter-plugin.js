AUI.add('aui-custom-select-filter-plugin', function(A) {

	var	Lang = A.Lang,
	getClassName = A.ClassNameManager.getClassName,
	NAME = 'aui-custom-select-filter-plugin',
	NS = 'aui-custom-select-filter-plugin',

	// Property keys
	HOST = 'host'
	;

	var SelectFilter = A.Component.create({

		ATTRS:
		{
			someAttr: {
				value: ""
			}
		},

		EXTENDS: A.Plugin.Base,
		NAME: NAME,
		NS: NS,

		prototype: {

			select: null,
			filterCtn: null,
			filterItemSelector: null,

			initializer: function() {
				var instance = this;

				var host = instance.get(HOST);
				var hostParent = host.ancestor();

				var filterCtnId = host.getAttribute('data-filterctn');
				var filterItemSelector = host.getAttribute('data-filteritemselector');

				var select = host.one('select');
				var filterCtn = hostParent.one('#' + filterCtnId);

				if(select && filterCtn && filterItemSelector) {
					instance.select = select;
					instance.filterCtn = filterCtn;
					instance.filterItemSelector = filterItemSelector;

					select.on('change', instance._onSelectChange, instance);

					host.addClass('select-filter-ready');
				}

			},

			_onSelectChange: function(e) {
				var instance = this;

				var selectValue = instance.select.get('value');

				var allFilterItems = instance.filterCtn.all('.' + instance.filterItemSelector);
				var filteredItems = instance.filterCtn.all('.' + selectValue);

				if(selectValue == "0") {
					allFilterItems.show();
				} else {
					allFilterItems.hide();
					filteredItems.show();
				}


			},

			_someFunction: function() {}
		}

	});

	A.namespace('Plugin').SelectFilter = SelectFilter;

}, '1.0.1' ,{requires:[
	'aui-component',
	'aui-event',
	'plugin'
	]}
);
