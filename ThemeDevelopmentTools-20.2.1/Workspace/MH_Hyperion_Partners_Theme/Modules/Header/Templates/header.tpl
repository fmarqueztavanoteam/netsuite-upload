<div class="header-message" data-view="Message.Placeholder"></div>

{{#if ttSubHeaderExtension.topMessage}}
<div class="header-top-message">
	<div class="header-top-message-container">
		{{{ttSubHeaderExtension.topMessage}}}
	</div>
</div>
{{/if}}

<div class="header-main-wrapper {{#if isStandalone}}header-main-wrapper-standalone{{/if}}">
    {{#unless isStandalone}}

	{{!--<!-- Tavano Team SubHeader Extension -->--}}
	{{#if ttSubHeaderExtension}}
	<div class="header-subheader">
        <div class="header-subheader-container">

			{{#each ttSubHeaderExtension.columns}}
			<div class="{{class}}" style="{{styles}}">
				<ul class="header-subheader-options">
					
					{{#each links}}

						{{#if cart}}
						{{#unless ../../isStandalone}}
						<li {{#if class}}class="{{class}}"{{/if}}>
							{{#if separator}}
							<span class="tt-ext-subheader-separator"></span>
							{{/if}}
							<div class="header-menu-cart">
								<div class="header-menu-cart-dropdown">
									<div data-view="Header.MiniCart"></div>
								</div>
							</div>
						</li>
						{{/unless}}
						{{/if}}
						
						{{#if loginRegister}}
						<li {{#if class}}class="{{class}}"{{/if}}>
							{{#if separator}}
							<span class="tt-ext-subheader-separator"></span>
							{{/if}}
							<div class="header-menu-profile" data-view="Header.Profile"></div>
						</li>
						{{/if}}

						{{#if storeLocator}}
						<li {{#if class}}class="{{class}}"{{/if}}>
							{{#if separator}}
							<span class="tt-ext-subheader-separator"></span>
							{{/if}}
							<div data-view="StoreLocatorHeaderLink"></div>
						</li>
						{{/if}}
						
						{{#if siteSettings}}
						{{#if ../../showLanguagesOrCurrencies}}
						<li {{#if class}}class="{{class}}"{{/if}}>
							{{#if separator}}
							<span class="tt-ext-subheader-separator"></span>
							{{/if}}
							<div class="header-subheader-settings">
								<a href="#" class="header-subheader-settings-link" data-toggle="dropdown" aria-label="{{translate 'Settings'}}" title="{{translate 'Settings'}}">
									{{#if icon}}<i class="header-menu-settings-icon" aria-hidden="true"></i>{{/if}}
									{{#if label}}<span class="tt-ext-subheader-label-desktop">{{label}}</span>{{/if}}
									{{#if mobileLabel}}<span class="tt-ext-subheader-label-mobile">{{mobileLabel}}</span>{{/if}}
									{{!--<!-- <i class="header-menu-settings-carret" aria-hidden="true"></i> -->--}}
								</a>
								<div class="header-menu-settings-dropdown">
									<h5 class="header-menu-settings-dropdown-title">{{translate 'Site Settings'}}</h5>
									{{#if ../../showLanguages}}
										<div data-view="Global.HostSelector"></div>
									{{/if}}
									{{#if ../../showCurrencies}}
										<div data-view="Global.CurrencySelector"></div>
									{{/if}}
								</div>
							</div>
						</li>
						{{/if}}
						{{/if}}

						{{#if requestQuote}}
						<li {{#if class}}class="{{class}}"{{/if}}>
							{{#if separator}}
							<span class="tt-ext-subheader-separator"></span>
							{{/if}}
							<div data-view="RequestQuoteWizardHeaderLink"></div>
						</li>
						{{/if}}
						
						{{#if quickOrder}}
						<li {{#if class}}class="{{class}}"{{/if}}>
							{{#if separator}}
							<span class="tt-ext-subheader-separator"></span>
							{{/if}}
							<div data-view="QuickOrderHeaderLink"></div>
						</li>
						{{/if}}

						{{#if infoLink}}
						<li {{#if class}}class="{{class}}"{{/if}}>
							{{#if separator}}
							<span class="tt-ext-subheader-separator"></span>
							{{/if}}
							<a class="tt-ext-subheader-info-link" href="{{link}}" data-touchpoint="{{touchpoint}}" data-hashtag="{{hashtag}}" {{#if newWindow}}target="_blank"{{/if}} title="{{label}}" aria-label="{{label}}">
								{{#if icon}}<i class="tt-ext-subheader-info-link-icon" aria-hidden="true"></i>{{/if}}
								{{#if label}}<span class="tt-ext-subheader-label-desktop">{{label}}</span>{{/if}}
								{{#if mobileLabel}}<span class="tt-ext-subheader-label-mobile">{{mobileLabel}}</span>{{/if}}
							</a>
						</li>
						{{/if}}
						
						{{#if phoneLink}}
						<li {{#if class}}class="{{class}}"{{/if}}>
							{{#if separator}}
							<span class="tt-ext-subheader-separator"></span>
							{{/if}}
							<a class="tt-ext-subheader-phone-link" href="tel:{{link}}" title="{{label}}" aria-label="{{label}}">
								{{#if icon}}<i class="tt-ext-subheader-phone-link-icon" aria-hidden="true"></i>{{/if}}
								{{#if label}}<span class="tt-ext-subheader-label-desktop">{{label}}</span>{{/if}}
								{{#if mobileLabel}}<span class="tt-ext-subheader-label-mobile">{{mobileLabel}}</span>{{/if}}
							</a>
						</li>
						{{/if}}

						{{#if mailLink}}
						<li {{#if class}}class="{{class}}"{{/if}}>
							{{#if separator}}
							<span class="tt-ext-subheader-separator"></span>
							{{/if}}
							<a class="tt-ext-subheader-mail-link" href="mailto:{{link}}" title="{{label}}" aria-label="{{label}}">
								{{#if icon}}<i class="tt-ext-subheader-mail-link-icon" aria-hidden="true"></i>{{/if}}
								{{#if label}}<span class="tt-ext-subheader-label-desktop">{{label}}</span>{{/if}}
								{{#if mobileLabel}}<span class="tt-ext-subheader-label-mobile">{{mobileLabel}}</span>{{/if}}
							</a>
						</li>
						{{/if}}

						{{#if customLink}}
						<li {{#if class}}class="{{class}}"{{/if}}>
							{{#if separator}}
							<span class="tt-ext-subheader-separator"></span>
							{{/if}}
							<a href="{{link}}" {{#if touchpoint}}data-touchpoint="{{touchpoint}}"{{/if}} {{#if hashtag}}data-hashtag="{{hashtag}}"{{/if}} {{#if newWindow}}target="_blank"{{/if}} title="{{label}}" aria-label="{{label}}">
								{{#if label}}<span class="tt-ext-subheader-label-desktop">{{label}}</span>{{/if}}
								{{#if mobileLabel}}<span class="tt-ext-subheader-label-mobile">{{mobileLabel}}</span>{{/if}}
							</a>
						</li>
						{{/if}}
						
						{{#if html}}
						<li {{#if class}}class="{{class}}"{{/if}}>
							{{#if separator}}
							<span class="tt-ext-subheader-separator"></span>
							{{/if}}
							<div>{{{html}}}</div>
						</li>
						{{/if}}
						
					{{/each}}

				</ul>
			</div>
			{{/each}}

		</div>
	</div>
	{{else}}
	{{!--<!-- Theme Default SubHeader -->--}}
	<div class="header-subheader">
        <div class="header-subheader-container">
			<div class="header-subheader-left-section">
				<ul class="header-subheader-options">
					<li><div data-cms-area="tt-landmark_header_top-left-content" data-cms-area-filters="global"></div></li>
					<li><a class="header-subheader-become-dealer" href="/">Become a Dealer</a></li>
					<li><div data-view="StoreLocatorHeaderLink"></div></li>
				</ul>
			</div>
			<div class="header-subheader-right-section">
				<ul class="header-subheader-options">
					<li><div data-view="RequestQuoteWizardHeaderLink"></div></li>
					<li><div data-view="QuickOrderHeaderLink"></div></li>
					<li><div class="header-menu-profile" data-view="Header.Profile"></div></li>
					{{#if showLanguagesOrCurrencies}}
					<li>
						<div class="header-subheader-settings">
							<a href="#" class="header-subheader-settings-link" data-toggle="dropdown" aria-label="{{translate 'Settings'}}" title="{{translate 'Settings'}}">
								<i class="header-menu-settings-icon" aria-hidden="true"></i>
								{{!--<!-- <i class="header-menu-settings-carret" aria-hidden="true"></i> -->--}}
							</a>
							<div class="header-menu-settings-dropdown">
								<h5 class="header-menu-settings-dropdown-title">{{translate 'Site Settings'}}</h5>
								{{#if showLanguages}}
									<div data-view="Global.HostSelector"></div>
								{{/if}}
								{{#if showCurrencies}}
									<div data-view="Global.CurrencySelector"></div>
								{{/if}}
							</div>
						</div>
					</li>
					{{/if}}
					{{#unless isStandalone}}
					<li>
						<div class="header-menu-cart">
							<div class="header-menu-cart-dropdown">
								<div data-view="Header.MiniCart"></div>
							</div>
						</div>
					</li>
					{{/unless}}
				</ul>
			</div>
		</div>
	</div>
	{{/if}}

    {{/unless}}
	<div class="header-main-container">
		<div id="banner-header-top" class="content-banner banner-header-top" data-cms-area="tt-landmark_header_banner_top" data-cms-area-filters="global"></div>
		<div class="header-content">
			<div class="header-sidebar-toggle-wrapper">
				<button class="header-sidebar-toggle" data-action="header-sidebar-show" aria-label="{{translate 'Sidebar toggle button'}}">
					<i class="header-sidebar-toggle-icon" aria-hidden="true"></i>
				</button>
			</div>
			<div class="header-logo-wrapper">
				<div data-view="Header.Logo"></div>
			</div>
			{{#unless isStandalone}}
			<div data-view="SiteSearch" data-type="SiteSearch" class="tt-header-static-site-search"></div>
			{{/unless}}
			{{!--<!-- <div class="header-right-menu">
				<div class="header-menu-profile" data-view="Header.Profile"></div>
				{{#unless isStandalone}}
				<div class="header-menu-locator-mobile" data-view="StoreLocatorHeaderLink"></div>
				<div class="header-menu-searchmobile" data-view="SiteSearch.Button"></div>
				<div class="header-menu-cart">
					<div class="header-menu-cart-dropdown" >
						<div data-view="Header.MiniCart"></div>
					</div>
				</div>
				{{/unless}}
			</div> -->--}}
		</div>
		<div id="banner-header-bottom" class="content-banner banner-header-bottom" data-cms-area="tt-landmark_header_banner_bottom" data-cms-area-filters="global"></div>
	</div>

</div>

<div class="header-sidebar-overlay" data-action="header-sidebar-hide"></div>
<div class="header-secondary-wrapper{{#if isStandalone}} header-secondary-wrapper-standalone{{/if}}" data-view="Header.Menu" data-phone-template="header_sidebar" data-tablet-template="header_sidebar"></div>

{{!--<!-- Tavano Team : Sticky Header Extension -->--}}
{{#if ttStickyHeaderExtension}}
	<div class="tt-ext-sticky-header" aria-hidden="true">
		<div class="tt-ext-sticky-header-container">
			<div class="tt-ext-sticky-header-logo {{ttStickyHeaderExtension.logoClass}}" data-view="Header.Logo" {{{ttStickyHeaderExtension.logoWidth}}}></div>
			{{#unless isStandalone}}
			<div class="tt-ext-sticky-header-icons">
				<div class="tt-ext-sticky-header-search {{ttStickyHeaderExtension.searchClass}}" data-view="SiteSearch.Button"></div>
				<div class="tt-ext-sticky-header-cart {{ttStickyHeaderExtension.cartClass}}" data-view="Header.MiniCart"></div>
			</div>
			{{/unless}}
			<div class="tt-ext-sticky-header-menu {{ttStickyHeaderExtension.navClasses}}" data-view="Header.Menu"></div>
		</div>
	</div>
{{/if}}

{{!----
Use the following context variables when customizing this template:

	profileModel (Object)
	profileModel.addresses (Array)
	profileModel.addresses.0 (Array)
	profileModel.creditcards (Array)
	profileModel.firstname (String)
	profileModel.paymentterms (undefined)
	profileModel.phoneinfo (undefined)
	profileModel.middlename (String)
	profileModel.vatregistration (undefined)
	profileModel.creditholdoverride (undefined)
	profileModel.lastname (String)
	profileModel.internalid (String)
	profileModel.addressbook (undefined)
	profileModel.campaignsubscriptions (Array)
	profileModel.isperson (undefined)
	profileModel.balance (undefined)
	profileModel.companyname (undefined)
	profileModel.name (undefined)
	profileModel.emailsubscribe (String)
	profileModel.creditlimit (undefined)
	profileModel.email (String)
	profileModel.isLoggedIn (String)
	profileModel.isRecognized (String)
	profileModel.isGuest (String)
	profileModel.priceLevel (String)
	profileModel.subsidiary (String)
	profileModel.language (String)
	profileModel.currency (Object)
	profileModel.currency.internalid (String)
	profileModel.currency.symbol (String)
	profileModel.currency.currencyname (String)
	profileModel.currency.code (String)
	profileModel.currency.precision (Number)
	showLanguages (Boolean)
	showCurrencies (Boolean)
	showLanguagesOrCurrencies (Boolean)
	showLanguagesAndCurrencies (Boolean)
	isHomeTouchpoint (Boolean)
	cartTouchPoint (String)

----}}
