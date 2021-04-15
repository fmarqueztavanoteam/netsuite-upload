<div class="footer-content">
	<div class="footer-content-container">

		{{#each ttFooterExtension.columns}}
			<ul class="footer-content-column {{class}}">
				<li class="footer-content-column-header">{{title}}</li>
				{{#if newsletter}}
					{{#if description}}<p class="footer-content-column-description">{{description}}</p>{{/if}}
					<div class="footer-content-newsletter" data-view="FooterContent"></div>
				{{/if}}
				{{#each links}}
				<li {{#if linkClass}}class="{{linkClass}}"{{/if}}>
					{{#if link}}
					<a href="{{link}}" {{#if touchpoint}}data-touchpoint="{{touchpoint}}"{{/if}} {{#if hashtag}}data-hashtag="{{hashtag}}"{{/if}} {{#if newWindow}}target="_blank"{{/if}} title="{{label}}" aria-label="{{label}}">
					{{/if}}
						{{#if strong}}<strong>{{/if}}
						{{#if icon}}
							<div class="footer-icon-container {{#if iconRounded}}footer-icon-rounded fa-stack fa-2x{{/if}}" aria-hidden="true">
								{{#if iconRounded}}
								<i class="footer-ext-icon-circle fa-stack-2x"></i>
								{{/if}}
								<i class="footer-ext-icon {{icon}} {{#if iconRounded}}fa-stack-1x{{/if}}"></i>
							</div>
							{{#if text}}
							<span>{{text}}</span>
							{{/if}}
						{{else}}
							{{{text}}}
						{{/if}}
						{{#if strong}}</strong>{{/if}}
					{{#if link}}
					</a>
					{{/if}}
				</li>
				{{/each}}
			</ul>
		{{/each}}

		{{#unless ttFooterExtension}}
			<div id="content-footer1">
				<div data-cms-area="tt-landmark_footer_content1" data-cms-area-filters="global"></div>
			</div>
			<div id="content-footer2">
				<div data-cms-area="tt-landmark_footer_content2" data-cms-area-filters="global"></div>
			</div>
			<div id="content-footer3">
				<div data-cms-area="tt-landmark_footer_content3" data-cms-area-filters="global"></div>
			</div>
			<div id="content-footer4">
				<div data-cms-area="tt-landmark_footer_content4" data-cms-area-filters="global"></div>
			</div>
			<div id="content-footer5">
				<div data-cms-area="tt-landmark_footer_content5" data-cms-area-filters="global"></div>
				<div class="footer-content-newsletter" data-view="FooterContent"></div>
			</div>
		{{/unless}}

	</div>
</div>
<div class="footer-content-bottom">
	<div class="footer-content-bottom-container">

		<div class="footer-content-bottom-copyright">
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
Use the following context variables when customizing this template:

	showFooterNavigationLinks (Boolean)
	footerNavigationLinks (Array)

----}}
