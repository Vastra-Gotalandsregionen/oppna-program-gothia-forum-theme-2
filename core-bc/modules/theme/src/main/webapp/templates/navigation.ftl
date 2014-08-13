<div class="container">
	<ul aria-label="<@liferay.language key="site-pages" />" role="menubar" class="level-one">

		<#if nav_items?has_content>
			<#list nav_items as nav_item>
				<#assign nav_item_attr_has_popup = "" />
				<#assign nav_item_attr_selected = "" />
				<#assign nav_item_css_class = "" />
				<#assign nav_item_id = "" />
				<#assign nav_item_url = "" />
				<#assign nav_item_target = "" />
				<#assign nav_item_name = "" />


				<#if nav_item.isSelected()>
					<#assign nav_item_attr_has_popup = "aria-haspopup='true'" />
					<#assign nav_item_attr_selected = "aria-selected='true'" />
					<#assign nav_item_css_class = "selected" />
				</#if>

				<#assign nav_item_id = "layout_" + nav_item.getLayoutId() />
				<#assign nav_item_url = nav_item.getURL() />
				<#assign nav_item_target = nav_item.getTarget() />
				<#assign nav_item_name = nav_item.getName() />

				<li ${nav_item_attr_selected} class="${nav_item_css_class}" id="${nav_item_id}" role="presentation">
					<a aria-labelledby="${nav_item_id}}" ${nav_item_attr_has_popup} href="${nav_item_url}" ${nav_item_target} role="menuitem">
						<span>
							${nav_item_name}
						</span>
					</a>

					<#if nav_item.getChildren()?has_content>
						<ul class="level-two">
							<#list nav_item.getChildren() as nav_item_child>
								<li>Foo</li>
							</#list>
						</ul>
					</#if>

				</li>
			</#list>
		</#if>

	</ul>
</div>
