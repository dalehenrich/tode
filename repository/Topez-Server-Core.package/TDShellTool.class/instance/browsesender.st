as yet unclassified
browsesender
  "browse [--scriptPath[=<tode-path>]] sender [@filter-block-path][--pure|[--regex|-r]] <method-spec>"

  | selectBlock list selector label filteredLabel path |
  self primeScriptPathOption.
  self
    getSubcommandOptsMixedLongShort:
      {#('filter' nil #'required').
      #('regex' $r #'none').
      #('pure' nil #'none')}.
  subOptions
    at: 'filter'
    ifPresent: [ :filterPath | 
      filteredLabel := ' (filtered)'.
      selectBlock := self resolveAtPathReference: filterPath ]
    ifAbsent: [ 
      filteredLabel := ''.
      selectBlock := [ :each | true ] ].
  selector := subArguments at: 1.
  options
    at: 'scriptPath'
    ifPresent: [ :scriptPath | 
      path := scriptPath.
      filteredLabel := filteredLabel , ' (' , scriptPath , ')' ]
    ifAbsent: [ path := nil ].
  subOptions
    at: 'pure'
    ifPresent: [ :ignored | 
      list := self findPureSender: selector searchScriptRoot: path.
      label := 'Senders of ' , selector , ' (pure)' , filteredLabel ]
    ifAbsent: [ 
      subOptions
        at: 'regex'
        ifPresent: [ :ignored | 
          list := self findRegexSender: selector searchScriptRoot: path.
          label := 'Senders of ' , selector , ' (regex)' , filteredLabel ]
        ifAbsent: [ 
          list := self findSender: selector searchScriptRoot: path.
          label := 'Senders of ' , selector , filteredLabel ] ].
  list := list select: selectBlock.
  ^ self browseMethods: list label: label