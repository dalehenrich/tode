browse
browsereferences
  "
  browse [--scriptPath=<tode-path>] references [--filter=@filter-block-path] [--global] <global-name>...
  browse references [--filter=@filter-block-path] [--class=<class-name>] --literal=String|Symbol|Number|Array|ByteArray <literal>... 
  browse references [--filter=@filter-block-path] --class=<class-name> <variableName>
"

  | selectBlock list label filteredLabel path pattern |
  self primeScriptPathOption.
  self
    getSubcommandOptsMixedLongShort:
      {#('class' nil #'required').
      #('filter' nil #'required').
      #('global' nil #'none').
      #('literal' nil #'required')}.
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
      pattern := pattern , ' ' , arg.
      subOptions
        at: 'literal'
        ifPresent: [ :literalType | 
          | literal |
          literal := self createLiteral: literalType asSymbol from: arg.
          subOptions
            at: 'class'
            ifPresent: [ :className | 
              | cls |
              "literal references in class"
              cls := self resolveClassReference: className.
              list
                addAll:
                  (self findReferencesToLiteral: literal inClass: cls pattern: arg) ]
            ifAbsent: [ list addAll: (self findReferencesToLiteral: literal pattern: arg) ] ]
        ifAbsent: [ 
          subOptions
            at: 'class'
            ifPresent: [ :className | 
              | cls |
              "variable references in class"
              cls := self resolveClassReference: className.
              list
                addAll:
                  (self findReferencesToLiteral: arg asSymbol inClass: cls pattern: arg) ]
            ifAbsent: [ 
              "--global"
              list addAll: (self findReferences: arg searchScriptRoot: path) ] ] ].
  subOptions
    at: 'literal'
    ifPresent: [ :ignored | label := 'References to' , pattern , ' (literal)' , filteredLabel ]
    ifAbsent: [ 
      subOptions
        at: 'class'
        ifPresent: [ :ignored | label := 'References to' , pattern , ' (variable)' , filteredLabel ]
        ifAbsent: [ label := 'References to' , pattern , '(global)' , filteredLabel ] ].
  list := list select: selectBlock.
  ^ self browseMethods: list label: label