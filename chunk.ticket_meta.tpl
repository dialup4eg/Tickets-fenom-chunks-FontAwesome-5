<div class="ticket-meta row" data-id="{$id}">
    <span class="col-md-5">
        <i class="far fa-calendar-alt"></i> {$date_ago}
        &nbsp;&nbsp;
        <i class="far fa-user"></i> {$fullname}
    </span>
    <span class="col-md-2"><a href="{$_modx->makeUrl($_pls['section.id'])}">
        <i class="far fa-folder-open"></i> {$_pls['section.pagetitle']}</a>
    </span>
    <span class="col-md-2">
        <span class="ticket-star{if $can_star} active{/if}">
        {if $stared}<i class="fas fa-star"></i>{/if}
        {if $unstared}<i class="far fa-star"></i>{/if} 
        <span class="ticket-star-count">{$stars}</span></span>
        &nbsp;&nbsp;
        <i class="fas fa-eye"></i> {$views}
    </span>
    <span class="pull-right ticket-rating{if $active} active{/if}{if $inactive} inactive{/if}">
        <span class="vote plus{if $voted_plus} voted{/if}" title="{$_modx->lexicon('ticket_like')}">
            <i class="fas fa-arrow-up"></i>
        </span>
        {if $can_vote}<span class="vote rating" title="{$_modx->lexicon('ticket_refrain')}"><i class="fas fa-minus"></i></span>{/if}
        {if $cant_vote}<span class="rating{if $rating_positive} positive{/if}{if $rating_negative} negative{/if}" title="{$_modx->lexicon('ticket_rating_total')} {$rating_total}: ↑{$rating_plus} {$_modx->lexicon('ticket_rating_and')} ↓{$rating_minus}">{$rating}</span>{/if}
        <span class="vote minus{if $voted_minus} voted{/if}" title="{$_modx->lexicon('ticket_dislike')}">
            <i class="fas fa-arrow-down"></i>
        </span>
    </span>
</div>
{if $has_files}
<ul class="ticket-files">
    <strong>{$_modx->lexicon('ticket_uploaded_files')}:</strong>
    {$files}
</ul>
{/if}
