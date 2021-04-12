<div class="facets-item-cell-table" itemprop="itemListElement"  data-item-id="{{itemId}}" data-track-productlist-list="{{track_productlist_list}}" data-track-productlist-category="{{track_productlist_category}}" data-track-productlist-position="{{track_productlist_position}}" data-sku="{{sku}}">
	<meta itemprop="url" content="{{url}}">
	<div class="facets-item-cell-table-image-wrapper">
		<a class="facets-item-cell-table-link-image" href="{{url}}">
			<img class="facets-item-cell-table-image lazyload" data-src="{{resizeImage thumbnail.url 'thumbnail'}}" itemprop="image" alt="{{thumbnail.altimagetext}}" />
		</a>
		{{#if isEnvironmentBrowser}}
			<div class="facets-item-cell-table-quick-view-wrapper">
				<a href="{{url}}" class="facets-item-cell-table-quick-view-link" data-toggle="show-in-modal">
				<i class="facets-item-cell-table-quick-view-icon"></i>
				{{translate 'Quick View'}}
			</a>
			</div>
		{{/if}}
	</div>
	<div class="facets-item-cell-table-content-wrapper">
		
		{{#if itemIsNavigable}}
		<a class="facets-item-cell-table-title" href='{{url}}'>
			<span itemprop="name">{{name}}</span>
		</a>
		{{else}}
		<div class="facets-item-cell-table-title">
			<span itemprop="name">{{name}}</span>
		</div>
		{{/if}}

		{{#if sku}}
		<div class="facets-item-cell-table-sku">
			<span class="facets-item-cell-table-sku-title">SKU: </span>
			<span class="facets-item-cell-table-sku-main">{{sku}}</span>
		</div>
		{{/if}}

		{{!--<!-- Tavano Team Facets Item Info Extension - MPN -->--}}
		<div class="facets-item-cell-table-mpn" data-view="TT.MPN"></div>

		<div class="facets-item-cell-table-price">
			<div data-view="ItemViews.Price"></div>
		</div>

		{{#if showRating}}
		<div class="facets-item-cell-table-rating" itemprop="aggregateRating" data-view="GlobalViews.StarRating">
		</div>
		{{/if}}

		<div data-view="ItemDetails.Options"></div>

		<div data-view="Cart.QuickAddToCart"></div>

		<div class="facets-item-cell-table-stock">
			<div data-view="ItemViews.Stock" class="facets-item-cell-table-stock-message"></div>
		</div>

		<div data-view="StockDescription"></div>

		{{!--<!-- Tavano Team Facets Item Info Extension - Minimum Quantity -->--}}
		<div class="facets-item-cell-table-minimum-quantity" data-view="TT.MinimumQuantity"></div>

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
