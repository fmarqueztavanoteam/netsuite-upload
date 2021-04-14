<div class="footer-simplified-content footer-content-bottom">
	<div class="footer-content-bottom-container">

		<div class="footer-content-bottom-copyright footer-simplified-content-copyright">
			{{#if ttFooterExtension.copyright}}
				{{{ttFooterExtension.copyright}}}
			{{else}}
				Hyperion Partners. All rights reserved - Copyright © 2021
			{{/if}}
		</div>

		{{#if ttFooterExtension.payments}}
			<div class="footer-bottom-content-payment-cards">
				{{#each ttFooterExtension.payments}}
				<img class="lazyload" data-src="{{src}}" alt="{{alt}}" />
				{{/each}}
			</div>
		{{/if}}

		<div data-cms-area="tt-landmark_footer_content-bottom" data-cms-area-filters="global"></div>

	</div>
</div>

<div data-view="Global.BackToTop"></div>



{{!----
The context variables for this template are not currently documented. Use the {{log this}} helper to view the context variables in the Console of your browser's developer tools.

----}}
