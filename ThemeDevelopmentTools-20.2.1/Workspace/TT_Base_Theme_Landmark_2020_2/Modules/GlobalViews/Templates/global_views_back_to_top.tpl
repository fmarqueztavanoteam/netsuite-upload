{{#if tavanoTeamStickyBackToTop}}
{{!--<!-- Tavano Team : Sticky Back To Top Extension -->--}}
<div id="tt-sticky-back-to-top-container">
	<div id="back-to-top" class="global-views-back-to-top">
		<a href="#" data-action="back-to-top" aria-label="{{translate 'Back to top'}}">
			<i class="global-views-back-to-top-icon" aria-hidden="true"></i>
		</a>
	</div>
</div>
{{else}}
{{!--<!-- Default Theme Back To Top -->--}}
<div id="back-to-top" class="global-views-back-to-top">
	<a href="#" data-action="back-to-top">
		<i class="global-views-back-to-top-icon" aria-hidden="true"></i>
		{{translate 'Back to Top'}}
	</a>
</div>
{{/if}}



{{!----
The context variables for this template are not currently documented. Use the {{log this}} helper to view the context variables in the Console of your browser's developer tools.

----}}
