browse
browsevariables
  "
  browse variables (--iv=<iv> | --cv=<cv>) <class-name> [class]
"

  | list label filteredLabel path pattern |
  self
    getSubcommandOptsMixedLongShort:
      {#('class' nil #'required').
      #('literal' nil #'required')}.
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
            ifAbsent: [ list addAll: (self findReferences: arg searchScriptRoot: path) ] ] ].
  subOptions
    at: 'literal'
    ifPresent: [ :ignored | label := 'References to' , pattern , ' (literal)' , filteredLabel ]
    ifAbsent: [ 
      subOptions
        at: 'class'
        ifPresent: [ :ignored | label := 'References to' , pattern , ' (variable)' , filteredLabel ]
        ifAbsent: [ label := 'References to' , pattern , filteredLabel ] ].
  list := self filterBrowseList: list.
  ^ self browseMethods: list label: label