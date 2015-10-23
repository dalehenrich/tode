manPages
browsemethodManPage
  | manPage |
  manPage := TDManPage
    commandName: 'method'
    sourceMethod: self name asString , ' class>>browsemethodManPage'
    fromString:
      'NAME
  browse method - Find and view lists of methods matching patterns

SYNOPSIS
  browse method <selector>...
  browse method ( --regex | -r ) <method-pattern>...
  browse method --spec <method-spec>...

DESCRIPTION
  The `browse method` command brings up a method definition window on the
  methods that match the specified patterns. When a method is selected in
  the method source window displays the source.

  With no options present, method definitions that implement the given selector
  are listed.

  With the --regex or -r option present, the method-pattern is used to return
  method definitions with the selectors that match the pattern.

  With the --spec option present, only those methods specified are listed.

EXAMPLES
  browse method at:put: nextPutAll:
  browse method --spec Dictionary>>at:put: `Dictionary class>>new:`
  browse method --regex at\:put\:|nextPutAll\:
  browse --select=@filter method at:put: 
  browse --select=`[:def | true ]` method at:put: 
'.
  ^ manPage