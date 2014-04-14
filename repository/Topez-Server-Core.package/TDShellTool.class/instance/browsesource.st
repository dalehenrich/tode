browse
browsesource
  "
  browse [--scriptPath=<tode-path>] source [--filter=@filter-block-path] <regex-pattern>
  browse [--scriptPath=<tode-path>] source [--filter=@filter-block-path] --exact <source-string>
"

  | list pattern filteredLabel selectBlock path label |
  self primeScriptPathOption.
  self
    getSubcommandOptsMixedLongShort:
      {#('exact' nil #'none').
      #('filter' nil #'required')}.
  subOptions
    at: 'filter'
    ifPresent: [ :filterPath | 
      filteredLabel := ' (filtered)'.
      selectBlock := self resolveAtPathReference: filterPath ]
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
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findSourceExact: arg searchScriptRoot: path) ]
        ifAbsent: [ list addAll: (self findSource: arg searchScriptRoot: path) ].
      pattern := pattern , ' ' , arg ].
  list := list select: selectBlock.
  subOptions
    at: 'exact'
    ifPresent: [ :ignored | label := 'Source matches' , pattern , ' (exact)' , filteredLabel ]
    ifAbsent: [ label := 'Source matches' , pattern , filteredLabel ].
  ^ self browseMethods: list label: label