{{#if showBanner}}
	<div class="cookie-warning-banner-view alert" role="alert">
		<div class="cookieMessageLeftContent">
			{{{cookieMessage}}}
			{{#if showLink}}
			 <a href="https://system.netsuite.com{{linkHref}}" data-toggle="show-in-modal" data-page-header="{{linkContent}}">{{linkContent}}</a>
			{{/if}}
		</div>
		<div class="cookieMessageRightContent">
			<a href="/privacy-policy" data-touchpoint="home" data-hashtag="#/privacy-policy" title="{{translate 'Privacy & Cookie Policy'}}">{{translate 'Privacy & Cookie Policy'}}</a>
			<button data-action="close-message" type="button" data-dismiss="alert" aria-label="{{translate 'Close cookie message'}}" title="{{translate 'I AGREE'}}">{{translate 'I AGREE'}}</button>
		</div>
		{{#if closable}}
			<button class="cookie-warning-banner-view-close-button" data-action="close-message" type="button" data-dismiss="alert" aria-label="{{translate 'Close cookie message'}}" title="{{translate 'Close cookie message'}}">&times;</button>
		{{/if}}
	</div>
{{/if}}




{{!----
Use the following context variables when customizing this template:

	showBanner (Boolean)
	cookieMessage (String)
	showLink (Boolean)
	linkHref (String)
	linkContent (String)
	closable (Boolean)

----}}
