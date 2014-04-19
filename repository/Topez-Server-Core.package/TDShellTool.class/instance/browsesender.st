browse
browsesender
  "
  browse sender <selector>...
  browse sender [--pure] <selector>...
  browse sender [--regex|-r]] <selector-pattern>...
"

  | list label path pattern |
  self
    getSubcommandOptsMixedLongShort:
      {#('regex' $r #'none').
      #('pure' nil #'none')}.
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | path := scriptPath ]
    ifAbsent: [ path := nil ].
  list := Set new.
  pattern := ''.
  subArguments
    do: [ :arg | 
      pattern := pattern , ' ' , arg.
      subOptions
        at: 'pure'
        ifPresent: [ :ignored | list addAll: (self findPureSender: arg searchScriptRoot: path) ]
        ifAbsent: [ 
          subOptions
            at: 'regex'
            ifPresent: [ :ignored | list addAll: (self findRegexSender: arg searchScriptRoot: path) ]
            ifAbsent: [ list addAll: (self findSender: arg searchScriptRoot: path) ] ] ].
  list := self filterBrowseList: list.
  path
    ifNil: [ ^ self browseMethods: list label: label ]
    ifNotNil: [ 
      self browseLeafNodes: [ list asArray ] pattern: pattern label: label.
      ^ list ]