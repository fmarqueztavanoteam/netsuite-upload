{{#unless isStandalone}}
<nav class="header-menu-secondary-nav">

	{{!--<!-- LEVEL: 1 -->--}}
	<ul class="header-menu-level1">
		{{#each categories}}
			{{#if text}}
				{{#if ttHeaderNavExt.click}}
				<li class="{{parentclassnames}}" {{#if categories}}data-action="tt-categories-menu"{{/if}}>
				{{else}}
				<li class="{{parentclassnames}}" {{#if categories}}data-toggle="categories-menu" data-action="tt-categories-menu"{{/if}}>
				{{/if}}
					<a class="{{class}}" {{objectToAtrributes this}} {{{ttHeaderNavExt.click}}}>
						<span>{{translate text}}</span>
						{{#if categories}}
							<i class="header-menu-level1-anchor-icon" aria-hidden="true"></i>
						{{/if}}
					</a>

					
					{{#unless ../ttHeaderNavExt.menuType}}
					{{!--<!--
						

					MAIN THEME NAVIGATION
					

					-->--}}

					{{!--<!-- LEVEL: 2 -->--}}
					{{#if categories}}
					<ul class="{{#if ../ttHeaderNavExt}}tt-nav-ext-from-theme{{/if}} header-menu-level-container" data-menu="2">
						<li class="{{ttHeaderNavExt.bannersHTML.positionClass}}">
							<div class="header-menu-level2-wrapper">

								{{!--<!-- TAVANO TEAM HEADER NAVIGATION EXTENSION - BANNERS -->--}}
								{{#if ttHeaderNavExt.bannersHTML.onTopPosition}}
									{{{ttHeaderNavExt.bannersHTML.html}}}
								{{/if}}
								
								<ul class="header-menu-level2">
									{{#each categories}}
									<li class="{{parentClass}}">
										<a class="{{class}}" {{objectToAtrributes this}} {{{ttHeaderNavExt.click}}}>
											<span>{{translate text}}</span>
											{{#if categories}}
												<i class="header-menu-level2-anchor-icon" aria-hidden="true"></i>
											{{/if}}
										</a>
										{{!--<!-- LEVEL: 3 -->--}}
										{{#if categories}}
										<div class="header-menu-level3-wrapper" data-menu="3">
											<ul class="header-menu-level3">
												{{#each categories}}
												<li>
													<a class="{{class}}" {{objectToAtrributes this}} {{{ttHeaderNavExt.click}}}>
														<span>{{translate text}}</span>
														{{#if categories}}
															<i class="header-menu-level3-anchor-icon" aria-hidden="true"></i>
														{{/if}}
													</a>
													{{!--<!-- LEVEL: 4 -->--}}
													{{#if categories}}
													<div class="header-menu-level4-wrapper" data-menu="4">
														<ul class="header-menu-level4">
															{{#each categories}}
															<li>
																<a class="{{class}}" {{objectToAtrributes this}} {{{ttHeaderNavExt.click}}}>
																	<span>{{translate text}}</span>
																	{{#if categories}}
																		<i class="header-menu-level4-anchor-icon" aria-hidden="true"></i>
																	{{/if}}
																</a>
																{{!--<!-- LEVEL: 5 -->--}}
																{{#if categories}}
																<div class="header-menu-level5-wrapper" data-menu="5">
																	<ul class="header-menu-level5">
																		{{#each categories}}
																		<li>
																			<a class="{{class}}" {{objectToAtrributes this}}>
																				<span>{{translate text}}</span>
																			</a>
																		</li>
																		{{/each}}
																	</ul>
																</div>
																{{/if}}
															</li>
															{{/each}}
														</ul>
													</div>
													{{/if}}
												</li>
												{{/each}}
											</ul>
										<div>
										{{/if}}
									</li>
									{{/each}}
								</ul>

								{{!--<!-- TAVANO TEAM HEADER NAVIGATION EXTENSION - BANNERS -->--}}
								{{#unless ttHeaderNavExt.bannersHTML.onTopPosition}}
									{{{ttHeaderNavExt.bannersHTML.html}}}
								{{/unless}}

							</div>
						</li>
					</ul>
					{{/if}}



					{{else}}
					{{!--<!--
						
						
					TAVANO TEAM HEADER NAVIGATION EXTENSION
					(DO NOT CHANGE)
				
				
					-->--}}



					{{!--<!-- LEVEL: 2 -->--}}
					{{#if categories}}
					<ul class="{{../ttHeaderNavExt.menuType}} tt-nav-ext-header-menu-level-container" data-menu="2">
						<li class="{{ttHeaderNavExt.bannersHTML.positionClass}}">
							<div class="tt-nav-ext-header-menu-level2-wrapper">

								{{!--<!-- TAVANO TEAM HEADER NAVIGATION EXTENSION - BANNERS -->--}}
								{{#if ttHeaderNavExt.bannersHTML.onTopPosition}}
									{{{ttHeaderNavExt.bannersHTML.html}}}
								{{/if}}
								
								<ul class="tt-nav-ext-header-menu-level2">
									{{#each categories}}
									<li class="{{parentClass}}">
										<a class="tt-nav-ext-{{class}}" {{objectToAtrributes this}} {{{ttHeaderNavExt.click}}}>
											{{!--<!-- TAVANO TEAM HEADER NAVIGATION EXTENSION - THUMBNAILS -->--}}
											{{#if ttHeaderNavExt.thumbnails}}
											<div class="tt-nav-ext-thumbnailurl-wrapper">
												<img class="tt-nav-ext-thumbnailurl lazyload" data-src="{{additionalFields.thumbnailurl}}" alt="" />
											</div>
											{{/if}}
											<span>{{translate text}}</span>
											{{#if categories}}
												<i class="tt-nav-ext-header-menu-level2-anchor-icon" aria-hidden="true"></i>
											{{/if}}
										</a>
										{{!--<!-- LEVEL: 3 -->--}}
										{{#if categories}}
										<div class="tt-nav-ext-header-menu-level3-wrapper" data-menu="3">
											<ul class="tt-nav-ext-header-menu-level3">
												{{#each categories}}
												<li>
													<a class="tt-nav-ext-{{class}}" {{objectToAtrributes this}} {{{ttHeaderNavExt.click}}}>
														{{!--<!-- TAVANO TEAM HEADER NAVIGATION EXTENSION - THUMBNAILS -->--}}
														{{#if ttHeaderNavExt.thumbnails}}
														<div class="tt-nav-ext-thumbnailurl-wrapper">
															<img class="tt-nav-ext-thumbnailurl lazyload" data-src="{{additionalFields.thumbnailurl}}" alt="" />
														</div>
														{{/if}}
														<span>{{translate text}}</span>
														{{#if categories}}
															<i class="tt-nav-ext-header-menu-level3-anchor-icon" aria-hidden="true"></i>
														{{/if}}
													</a>
													{{!--<!-- LEVEL: 4 -->--}}
													{{#if categories}}
													<div class="tt-nav-ext-header-menu-level4-wrapper" data-menu="4">
														<ul class="tt-nav-ext-header-menu-level4">
															{{#each categories}}
															<li>
																<a class="tt-nav-ext-{{class}}" {{objectToAtrributes this}} {{{ttHeaderNavExt.click}}}>
																	{{!--<!-- TAVANO TEAM HEADER NAVIGATION EXTENSION - THUMBNAILS -->--}}
																	{{#if ttHeaderNavExt.thumbnails}}
																	<div class="tt-nav-ext-thumbnailurl-wrapper">
																		<img class="tt-nav-ext-thumbnailurl lazyload" data-src="{{additionalFields.thumbnailurl}}" alt="" />
																	</div>
																	{{/if}}
																	<span>{{translate text}}</span>
																	{{#if categories}}
																		<i class="tt-nav-ext-header-menu-level4-anchor-icon" aria-hidden="true"></i>
																	{{/if}}
																</a>
																{{!--<!-- LEVEL: 5 -->--}}
																{{#if categories}}
																<div class="tt-nav-ext-header-menu-level5-wrapper" data-menu="5">
																	<ul class="tt-nav-ext-header-menu-level5">
																		{{#each categories}}
																		<li>
																			<a class="tt-nav-ext-{{class}}" {{objectToAtrributes this}}>
																				{{!--<!-- TAVANO TEAM HEADER NAVIGATION EXTENSION - THUMBNAILS -->--}}
																				{{#if ttHeaderNavExt.thumbnails}}
																				<div class="tt-nav-ext-thumbnailurl-wrapper">
																					<img class="tt-nav-ext-thumbnailurl lazyload" data-src="{{additionalFields.thumbnailurl}}" alt="" />
																				</div>
																				{{/if}}
																				<span>{{translate text}}</span>
																			</a>
																		</li>
																		{{/each}}
																	</ul>
																</div>
																{{/if}}
															</li>
															{{/each}}
														</ul>
													</div>
													{{/if}}
												</li>
												{{/each}}
											</ul>
										<div>
										{{/if}}
									</li>
									{{/each}}
								</ul>

								{{!--<!-- TAVANO TEAM HEADER NAVIGATION EXTENSION - BANNERS -->--}}
								{{#unless ttHeaderNavExt.bannersHTML.onTopPosition}}
									{{{ttHeaderNavExt.bannersHTML.html}}}
								{{/unless}}

							</div>
						</li>
					</ul>
					{{/if}}


					{{/unless}}

				</li>
			{{/if}}
		{{/each}}
	</ul>
</nav>
{{/unless}}

{{!----
The following context variables are from the Tavano Team Header Menu Extension:

	parentClass (String)
	ttHeaderNavExt (Object)

----}}

{{!----
Use the following context variables when customizing this template:

	categories (Array)
	showExtendedMenu (Boolean)
	showLanguages (Boolean)
	showCurrencies (Boolean)

----}}
