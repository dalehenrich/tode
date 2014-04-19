browse
browsesender
  "
  browse [--scriptPath[=<tode-path>]] sender [--filter=<filter-spec>] <selector>...
  browse [--scriptPath[=<tode-path>]] sender [--filter=<filter-spec>][--pure] <selector>...
  browse [--scriptPath[=<tode-path>]] sender [--filter=<filter-spec>][--regex]] <selector-pattern>...
"

  | selectBlock list label filteredLabel path pattern |
  self
    getSubcommandOptsMixedLongShort:
      {#('filter' nil #'required').
      #('regex' $r #'none').
      #('pure' nil #'none')}.
  subOptions
    at: 'filter'
    ifPresent: [ :filterSpec | 
      filteredLabel := ' (filtered)'.
      selectBlock := self resolveFilterSpec: filterSpec ]
    ifAbsent: [ 
      filteredLabel := ''.
      selectBlock := [ :each | true ] ].
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | 
      path := scriptPath.
      filteredLabel := filteredLabel , ' (' , scriptPath , ')' ]
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
  subOptions
    at: 'pure'
    ifPresent: [ :ignored | label := 'Senders of' , pattern , ' (pure)' , filteredLabel ]
    ifAbsent: [ 
      subOptions
        at: 'regex'
        ifPresent: [ :ignored | label := 'Senders of' , pattern , ' (regex)' , filteredLabel ]
        ifAbsent: [ label := 'Senders of' , pattern , filteredLabel ] ].
  list := list select: selectBlock.
  ^ self browseMethods: list label: label