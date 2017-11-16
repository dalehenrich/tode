ol
olviewManPage
  | manPage |
  manPage := TDManPage
    commandName: 'view'
    sourceMethod: self name asString , '>>olview'
    fromString:
      'NAME
  ol view - View object log entries

SYNOPSIS
  ol view  [--inverse] [--reverse|-r] [--age=<duration>] [--pid=<pid>] [--continuation] \
           [--tag=<tag-block>] [ <priority>... ]

DESCRIPTION
  The `ol view` command brings up a window on the object log entries that match the
  list of priorities. If no priorities are specified, the entire object log is
  displayed. 

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
    Only object log entries NEWER than are included in the list
  
  --continuation
    Only object log entries with continuations are displayed.

  --inverse
    The <command> applies to the list of all priorities, except the listed priorities.

  --pid=<pid>
    Only object log entries from the specified <pid> are displayed.

  --reverse
    The list is displayed in reverse order.

  --tag=<tag-block>
    The <tag-block> is applied as a select block on the tag field of the ObjectLogEntry.

EXAMPLES
  ol view error
  ol view --inverse transcript
  ol view --age=`1 day` -r transcript
  ol view --age=`1 day` -r --pid=15292 transcript
  ol view --continuation
  ol view --continuation --age=`1 month` error
  ol view --tag=`[:tag | tag = #tag]`
'.
  ^ manPage