ol
olclearManPage
  | manPage |
  manPage := TDManPage
    commandName: 'clear'
    fromString:
      'NAME
  ol clear - Remove object log entries

SYNOPSIS
  ol clear  [--inverse]  [--age=<duration>] [--continuation] [ <priority>... ]

DESCRIPTION
  The `ol clear` command the object log entries that match the list of priorities. If 
  no priorities are specified, the entire object log is cleared. 

  A <priority> is one of the following:

    debug
    error
    fatal
    info
    interaction
    trace
    transcript
    warn

OPTIONS
  --age=<duration>
    Only object log entries OLDER than age are removed.

  --continuation
    Only object log entries with continuations are removed.

  --inverse
    The <command> applies to the list of all priorities, except the listed 
    priorities.

EXAMPLES
  ol clear debug error trace
  ol clear --inverse transcript
  ol clear --age=`1 month`
  ol clear --continuation
  ol clear --continuation --age=`1 month` error
'.
  ^ manPage