manPages
browsesenderManPage
  | manPage |
  manPage := TDManPage
    commandName: 'sender'
    sourceMethod: self name asString , ' class>>browsesenderManPage'
    fromString:
      'NAME
  browse sender - Find and view lists of methods sending particular messages

SYNOPSIS
  browse sender <selector>...
  browse sender [--pure] <selector>...
  browse sender [--regex|-r] <selector-pattern>...

DESCRIPTION
  The `browse sender` command brings up a method definition window on the
  methods that send the specified selector.

  With no options present, methods that send the given selector or reference
  the literal symbol for the selector are listed. 

  With the --pure option present, only the methods that send the given selector
  are listed.

  With the --regex (or -r) option present, methods that send a message that matches
  the given regex selector pattern are listed.

EXAMPLES
  browse sender at:put: 
  browse sender --pure at:put:
  browse sender --regex at\:put\: 
  browse --scriptPath sender at:put:
'.
  ^ manPage