<li class="ticket-comment" id="comment-{$id}">
    <div class="ticket-comment-body{$bad}">
        <div class="ticket-comment-header">
            <div class="ticket-comment-dot-wrapper">
                <div class="ticket-comment-dot"></div>
            </div>
            <img src="{$avatar}" class="ticket-avatar" alt=""/>
            <span class="ticket-comment-author">{$fullname}</span>
            <span class="ticket-comment-createdon">{$date_ago}</span>
            <span class="ticket-comment-link"><a href="{$url}#comment-{$id}">#</a></span>
            {if $has_parent}<span class="ticket-comment-up"><a href="{$url}#comment-{$parent}" data-id="{$id}" data-parent="{$parent}">&uarr;</a></span>{/if}
            <span class="ticket-comment-down"><a href="#" data-child="">&darr;</a></span>
            <span class="ticket-comment-rating inactive">
                <span class="rating{if $rating_positive} positive{/if}{if $rating_negative} negative{/if}">
                    {$rating}
                </span>
                <span class="plus" title="{$_modx->lexicon('ticket_like')}">
                    <i class="fas fa-arrow-up"></i>
                </span>
                <span class="minus" title="{$_modx->lexicon('ticket_dislike')}">
                   <i class="fas fa-arrow-down"></i> 
                </span>
            </span>
        </div>
        <div class="ticket-comment-text">
            {$text}
        </div>
    </div>
    <ol class="comments-list">{$children}</ol>
</li>
