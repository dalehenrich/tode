manPages
findmethodManPage
  | manPage |
  manPage := TDManPage
    commandName: 'method'
    sourceMethod: self name asString , '>>findmethod'
    fromString:
      'NAME
  find method - Find list of method definitions matching patterns

SYNOPSIS
  find method <selector>...
  find method ( --regex | -r ) <method-pattern>...
  find method --spec <method-spec>...

DESCRIPTION
  The `find method` command returns a list of method definitions matching the specified 
  patterns.

  With no options present, method definitions that implement the given selector
  are listed.

  With the --regex or -r option present, the method-pattern is used to return
  method definitions with the selectors that match the pattern.

  With the --spec option present, only those methods specified are listed.

EXAMPLES
  find method at:put: nextPutAll:
  find method --spec Dictionary>>at:put: `Dictionary class>>new:`
  find method --regex at\:put\:|nextPutAll\:
  find --select=@filter method at:put: 
  find --select=`[:def | true ]` method at:put: 
'.
  ^ manPage