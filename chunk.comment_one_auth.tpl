<li class="ticket-comment{if $comment_new} ticket-comment-new{/if}" id="comment-{$id}" data-parent="{$parent}" data-newparent="{$new_parent}" data-id="{$id}">
    <div class="ticket-comment-body{if $guest} ticket-comment-guest{/if}{$bad}">
        <div class="ticket-comment-header">
            <div class="ticket-comment-dot-wrapper">
                <div class="ticket-comment-dot"></div>
            </div>
            <img src="{$avatar}" class="ticket-avatar" alt=""/>
            <span class="ticket-comment-author">{$fullname}</span>
            <span class="ticket-comment-createdon">{$date_ago}</span>{if $comment_was_edited}<span class="ticket-comment-edited">({$_modx->lexicon('ticket_comment_was_edited')})</span>{/if}
            <span class="ticket-comment-link"><a href="{$url}#comment-{$id}">#</a></span>
            <span class="ticket-comment-star{if $can_star} active{/if}">{if $stared}<i class="fas fa-star"></i>{/if}{if $unstared}<i class="far fa-star"></i>{/if}</span>
            {if $has_parent}<span class="ticket-comment-up"><a href="{$url}#comment-{$parent}" data-id="{$id}" data-parent="{$parent}">&uarr;</a></span>{/if}
            <span class="ticket-comment-down"><a href="#" data-child="">&darr;</a></span>
            <span class="ticket-comment-rating{if $can_vote} active{/if}{if $cant_vote} inactive{/if}">
                <span class="rating{if $rating_positive} positive{/if}{if $rating_negative} negative{/if}" title="{$_modx->lexicon('ticket_rating_total')} {$rating_total}: ↑{$rating_plus} {$_modx->lexicon('ticket_rating_and')} ↓{$rating_minus}">{$rating}</span>
                <span class="vote plus{if $voted_plus} voted{/if}" title="{$_modx->lexicon('ticket_like')}"><i class="fas fa-arrow-up"></i></span>
                <span class="vote minus{if $voted_minus} voted{/if}" title="{$_modx->lexicon('ticket_dislike')}"><i class="fas fa-arrow-down"></i></span>
            </span>
        </div>
        <div class="ticket-comment-text">
            {$text}
        </div>
    </div>
    <div class="comment-reply">
        <a href="#" class="reply"><i class="fas fa-reply"></i> {$_modx->lexicon('ticket_comment_reply')}</a> &nbsp;&nbsp;
        {if $comment_edit_link}<a href="#" class="edit"><i class="fas fa-pencil-alt"></i> {$_modx->lexicon('ticket_comment_edit')}</a>{/if}
    </div>
    <ol class="comments-list">{$children}</ol>
</li>
