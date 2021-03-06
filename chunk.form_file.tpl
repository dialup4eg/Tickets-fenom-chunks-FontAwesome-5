<div class="ticket-file{if $deleted} deleted{/if}{if $new} new{/if}" data-id="{$id}">
    <a href="{$url}" class="ticket-file-link" title="{$file}" target="_blank">
        <div class="ticket-file-image-wrapper">
            {$file}
        </div>
    </a>
    <div class="ticket-file-meta">
        <a href="#" class="ticket-file-delete">{$_modx->lexicon('ticket_file_delete')}</a>
        <a href="#" class="ticket-file-restore">{$_modx->lexicon('ticket_file_restore')}</a>
        <br/>
        <a href="#" class="ticket-file-insert">{$_modx->lexicon('ticket_file_insert')}</a>
        <br/>
        <span class="ticket-file-size">{$size} Kb</span>
    </div>
    <div class="ticket-file-template">
        <a href="{$url}">
            {$name}
        </a>
    </div>
</div>
