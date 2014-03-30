as yet unclassified
browsemethod
  "browse method [--spec|[--regex|-r]] [--filter=@filter-block-path] <method-spec> "

  | selectBlock list arg label filteredLabel |
  self
    getSubcommandOptsMixedLongShort:
      {#('filter' nil #'required').
      #('regex' $r #'none').
      #('spec' nil #'none')}.
  subOptions
    at: 'filter'
    ifPresent: [ :filterPath | 
      filteredLabel := ' (filtered)'.
      selectBlock := self resolveAtPathReference: filterPath ]
    ifAbsent: [ 
      filteredLabel := ''.
      selectBlock := [ :each | true ] ].
  subOptions
    at: 'spec'
    ifPresent: [ :ignored | 
      | methodSpec |
      methodSpec := self parseMethodSpecTokens: subArguments.
      list := self findMethodSpec: methodSpec.
      label := 'Implementors of: ' , methodSpec , filteredLabel ]
    ifAbsent: [ 
      arg := subArguments at: 1.
      subOptions
        at: 'regex'
        ifPresent: [ :ignored | 
          list := self findRegexMethod: arg.
          label := 'Implementors of ' , arg , ' (regex)' , filteredLabel ]
        ifAbsent: [ 
          list := self findMethod: arg.
          label := 'Implementors of ' , arg , filteredLabel ] ].
  list := list select: selectBlock.
  ^ self browseMethods: list label: label