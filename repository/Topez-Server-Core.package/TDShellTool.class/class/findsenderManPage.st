manPages
findsenderManPage
  | manPage |
  manPage := TDManPage
    commandName: 'sender'
    sourceMethod: self name asString , ' class>>findsenderManPage'
    fromString:
      'NAME
  find sender - Find list of method definitions sending particular messages

SYNOPSIS
  find sender <selector>...
  find sender [--pure] <selector>...
  find sender [--regex|-r] <selector-pattern>...

DESCRIPTION
  The `find sender` command returns a list of method definitions on the
  methods that send the specified selector.

  With no options present, methods that send the given selector or reference
  the literal symbol for the selector are listed. 

  With the --pure option present, only the methods that send the given selector
  are listed.

  With the --regex (or -r) option present, methods that send a message that matches
  the given regex selector pattern are listed.

EXAMPLES
  find sender at:put: 
  find sender --pure at:put:
  find sender --regex at\:put\: 
  find --scriptPath sender at:put:
'.
  ^ manPage