# Tickets Fenom chunks + FontAwesome 5

## TicketMeta

{$_modx->runSnippet('!TicketMeta',[
    'tplFile' => '@FILE chunks/chunk.ticket_meta_file.tpl',
    'tpl' =>'@FILE chunks/chunk.ticket_meta.tpl'
])}

## TicketComments
`
{$_modx->runSnippet('!TicketComments',[
    'tplCommentForm' => '@FILE chunks/chunk.comment_form.tpl',
    'tplCommentFormGuest' => '@FILE chunks/chunk.comment_form_guest.tpl',
    'tplCommentGuest' => '@FILE chunks/chunk.comment_one_guest.tpl',
    'tplCommentAuth' => '@FILE chunks/chunk.comment_one_auth.tpl',
    'tplCommentDeleted' => '@FILE chunks/chunk.comment_one_deleted.tpl',
    'tplComments' => '@FILE chunks/chunk.comment_wrapper.tpl',
    'tplLoginToComment' => '@FILE chunks/chunk.comment_login.tpl',
    'tplCommentEmailOwner' => '@FILE chunks/chunk.comment_email_owner.tpl',
    'tplCommentEmailReply' => '@FILE chunks/chunk.comment_email_reply.tpl',
    'tplCommentEmailSubscription' => '@FILE chunks/chunk.comment_email_subscription.tpl',
    'tplCommentEmailBcc' => '@FILE chunks/chunk.comment_email_bcc.tpl',
    'tplCommentEmailUnpublished' => '@FILE chunks/chunk.comment_email_unpublished.tpl',
])}
`
## getComments
`
{$_modx->runSnippet('!getComments',[
    'tpl' => '@FILE chunks/chunk.comment_latest.tpl',
    'tplCommentDeleted' => '@FILE chunks/chunk.comment_one_deleted.tpl'
])}
`
## TicketLatest
`
{$_modx->runSnippet('!TicketLatest',[
  'tpl' => '@FILE chunks/chunk.ticket_latest.tpl',
  'parents' => $_pls['section.id']
])}
`
## getTicketsSections
`
{$_modx->runSnippet('!getTicketsSections',[
  'tpl' => '@FILE chunks/chunk.ticket_sections_row.tpl',
])}
`
## TicketForm
`
{$_modx->runSnippet('!TicketForm',[
	'tplFormCreate' => '@FILE chunks/chunk.form_create.tpl',
	'tplFormUpdate' => '@FILE chunks/chunk.form_update.tpl',
	'tplPreview' => '@FILE chunks/chunk.form_preview.tpl',
	'tplTicketEmailBcc' => '@FILE chunks/chunk.ticket_email_bcc.tpl',
	'tplTicketEmailSubscription' => '@FILE chunks/chunk.ticket_email_subscription.tpl',
	'tplFiles' => '@FILE chunks/chunk.form_files.tpl',
	'tplFile' => '@FILE chunks/chunk.form_file.tpl',
	'tplImage' => '@FILE chunks/chunk.form_image.tpl'
])}
`
