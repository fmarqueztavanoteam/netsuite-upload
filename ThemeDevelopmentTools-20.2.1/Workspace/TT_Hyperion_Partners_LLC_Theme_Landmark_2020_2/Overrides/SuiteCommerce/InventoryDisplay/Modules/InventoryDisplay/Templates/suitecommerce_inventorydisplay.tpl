{{#unless isBackorderable}}
  <div itemprop="offers" itemscope itemtype="http://schema.org/Offer">
  {{#if isInStock}}
    <link itemprop="availability" href="http://schema.org/InStock"/>
  {{else}}
    <link itemprop="availability" href="http://schema.org/OutOfStock"/>
  {{/if}}
  </div>
{{/unless}}

{{#if isLoading}}
  {{ loadingText }}
{{else}}
  {{#if stockMessage}}
  <div class="inventory-display">
    <p class="inventory-display-stock-information-{{messageType}} {{orderType}} inventory-display-message-text">
        <span class="inventory-display-stock-information-{{messageType}} {{orderType}} icon" aria-hidden="true"><i></i></span>
        <span class="inventory-display-message-{{messageType}} {{orderType}}">
          {{ stockMessage }}
          {{#if quantityAvailableMessage}}
            {{ quantityAvailableMessage }}
          {{/if}}
        </span>
    </p>
  </div>
  {{/if}}
{{/if}}
