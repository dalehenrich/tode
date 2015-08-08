find
findsender
  "
  find sender <selector>...
  find sender [--pure] <selector>...
  find sender [--regex|-r]] <selector-pattern>...
"

  | path list |
  self
    getSubcommandOptsMixedLongShort:
      {#('regex' $r #'none').
      #('pure' nil #'none')}.
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | path := scriptPath ]
    ifAbsent: [ path := nil ].
  list := Set new.
  subArguments
    do: [ :arg | 
      subOptions
        at: 'pure'
        ifPresent: [ :ignored | list addAll: (self findPureSender: arg searchScriptRoot: path) ]
        ifAbsent: [ 
          subOptions
            at: 'regex'
            ifPresent: [ :ignored | list addAll: (self findRegexSender: arg searchScriptRoot: path) ]
            ifAbsent: [ list addAll: (self findSender: arg searchScriptRoot: path) ] ] ].
  ^ list