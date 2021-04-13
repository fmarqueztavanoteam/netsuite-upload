{{#each options}}
<a href="{{configOptionUrl}}" class="facets-item-list-display-selector {{#if isActive}} active {{/if}} {{#if isGrid}} facets-item-list-display-selector-grid {{/if}}" title="{{name}}" aria-label={{name}}>
	<i class="{{icon}}" aria-hidden="true"></i>
</a>
{{/each}}



{{!----
Use the following context variables when customizing this template: 
	
	configClasses (String)
	options (Array)

----}}
