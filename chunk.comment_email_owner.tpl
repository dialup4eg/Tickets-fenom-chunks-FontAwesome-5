{$_modx->lexicon('ticket_comment_email_owner_intro',[
    'name' => $name,
    'resource' => $resource,
    'pagetitle' => $pagetitle
])}
<pre>{$text}</pre>
<br/><br/>

<a href="{$resource | url : ['scheme' => 'full']}#comment-{$id}">{$_modx->lexicon('ticket_email_reply')}</a>
