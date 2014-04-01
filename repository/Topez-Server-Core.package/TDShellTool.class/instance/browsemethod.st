as yet unclassified
browsemethod
  "
  browse method [--filter=@filter-block-path] <selector>...
  browse method [--filter=@filter-block-path] --regex <method-pattern>...
  browse method [--filter=@filter-block-path] --spec <method-spec>...
"

  | selectBlock list label filteredLabel pattern |
  self
    getSubcommandOptsMixedLongShort:
      {#('filter' nil #'required').
      #('regex' nil #'none').
      #('spec' nil #'none')}.
  subOptions
    at: 'filter'
    ifPresent: [ :filterPath | 
      filteredLabel := ' (filtered)'.
      selectBlock := self resolveAtPathReference: filterPath ]
    ifAbsent: [ 
      filteredLabel := ''.
      selectBlock := [ :each | true ] ].
  list := Set new.
  pattern := ''.
  subOptions
    at: 'spec'
    ifPresent: [ :ignored | 
      subArguments
        do: [ :arg | 
          list addAll: (self findMethodSpec: arg).
          pattern := pattern , ' ' , arg ].
      label := 'Implementors of' , pattern , filteredLabel.
      list := list select: selectBlock.
      ^ self browseMethods: list label: label ].
  subOptions
    at: 'regex'
    ifPresent: [ :ignored | 
      subArguments
        do: [ :arg | 
          list addAll: (self findRegexMethod: arg).
          pattern := pattern , ' ' , arg ].
      label := 'Implementors of' , pattern , ' (regex)' , filteredLabel ]
    ifAbsent: [ 
      subArguments
        do: [ :arg | 
          list addAll: (self findMethod: arg).
          pattern := pattern , ' ' , arg ].
      label := 'Implementors of' , pattern , filteredLabel ].
  list := list select: selectBlock.
  ^ self browseMethods: list label: label