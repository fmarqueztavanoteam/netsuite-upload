<div class="facets-item-cell-list" itemprop="itemListElement"  data-item-id="{{itemId}}" data-track-productlist-list="{{track_productlist_list}}" data-track-productlist-category="{{track_productlist_category}}" data-track-productlist-position="{{track_productlist_position}}" data-sku="{{sku}}">
	<div class="facets-item-cell-list-left">
		<div class="facets-item-cell-list-image-wrapper">
			{{#if itemIsNavigable}}
				<a class="facets-item-cell-list-anchor" href='{{url}}'>
					<img class="facets-item-cell-list-image lazyload" data-src="{{resizeImage thumbnail.url 'thumbnail'}}" itemprop="image" alt="{{thumbnail.altimagetext}}" />
				</a>
			{{else}}
				<div class="facets-item-cell-list-image-container">
					<img class="facets-item-cell-list-image lazyload" data-src="{{resizeImage thumbnail.url 'thumbnail'}}" itemprop="image" alt="{{thumbnail.altimagetext}}" />
				</div>
			{{/if}}
			{{#if isEnvironmentBrowser}}
				<div class="facets-item-cell-list-quick-view-wrapper">
					<a href="{{url}}" class="facets-item-cell-list-quick-view-link" data-toggle="show-in-modal">
						<i class="facets-item-cell-list-quick-view-icon"></i>
						{{translate 'Quick View'}}
					</a>
				</div>
			{{/if}}
		</div>
	</div>
	<div class="facets-item-cell-list-middle">
		<meta itemprop="url" content="{{url}}">

		{{#if itemIsNavigable}}
		<a class="facets-item-cell-list-title" href='{{url}}'>
			<span itemprop="name">{{name}}</span>
		</a>
		{{else}}
		<div class="facets-item-cell-list-title">
			<span itemprop="name">{{name}}</span>
		</div>
		{{/if}}

		{{#if sku}}
		<div class="facets-item-cell-list-sku">
			<span class="facets-item-cell-list-sku-title">SKU: </span>
			<span class="facets-item-cell-list-sku-main">{{sku}}</span>
		</div>
		{{/if}}

		{{!-- Tavano Team Facets Item Info Extension - MPN --}}
		<div class="facets-item-cell-list-mpn" data-view="TT.MPN"></div>

		{{!--
		{{#if showRating}}
			<div class="facets-item-cell-list-rating" itemprop="aggregateRating" data-view="GlobalViews.StarRating"></div>
		{{/if}}
		--}}

		<div data-view="ItemDetails.Options"></div>

		{{!--<!-- Tavano Team Facets Item Info Extension - Store Description -->--}}
		<div class="facets-item-cell-list-store-description" data-view="TT.StoreDescription"></div>

	</div>
	<div class="facets-item-cell-list-right">
		<div class="facets-item-cell-list-price">
			<div data-view="ItemViews.Price"></div>
		</div>

		<div data-view="Cart.QuickAddToCart"></div>

		<div class="facets-item-cell-list-stock">
			<div data-view="ItemViews.Stock" class="facets-item-cell-list-stock-message"></div>
		</div>

		<div data-view="StockDescription"></div>

		{{!--<!-- Tavano Team Facets Item Info Extension - Minimum Quantity -->--}}
		<div class="facets-item-cell-list-minimum-quantity" data-view="TT.MinimumQuantity"></div>

	</div>
</div>




{{!----
Use the following context variables when customizing this template:

	itemId (Number)
	name (String)
	url (String)
	sku (String)
	isEnvironmentBrowser (Boolean)
	thumbnail (Object)
	thumbnail.url (String)
	thumbnail.altimagetext (String)
	itemIsNavigable (Boolean)
	showRating (Boolean)
	rating (Number)

----}}
