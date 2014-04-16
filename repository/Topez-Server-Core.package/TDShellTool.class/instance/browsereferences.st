browse
browsereferences
  "
  browse [--scriptPath=<tode-path>] references [--filter=<filter-spec>] [--global] <global-name>...
  browse references [--filter=<filter-spec>] [--class=<class-name>] --literal <literal>... 
  browse references [--filter=<filter-spec>] --class=<class-name> <variableName>
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
        at: 'literal'
        ifPresent: [ :literalType | 
          | literal |
          literal := arg evaluate.
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