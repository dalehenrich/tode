as yet unclassified
processClassNamesBlock: classNamesesBlock elementBlock: elementBlock
  | order classNames indents results classes |
  order := SortedCollection
    sortBlock: [ :assoc1 :assoc2 | 
      | result chain1 chain2 max i |
      result := nil.
      chain1 := assoc1 key.
      chain2 := assoc2 key.
      max := chain1 size min: chain2 size.
      i := 1.
      [ result isNil and: [ i <= max ] ]
        whileTrue: [ 
          (chain1 at: i) = (chain2 at: i)
            ifTrue: [ i := i + 1 ]
            ifFalse: [ result := (chain1 at: i) name < (chain2 at: i) name ] ].
      result isNil
        ifTrue: [ chain1 size < chain2 size ]
        ifFalse: [ result ] ].
  classNames := classNamesesBlock value.
  classes := (classNames
    collect: [ :className | Smalltalk at: className asSymbol ifAbsent: [  ] ])
    reject: [ :cl | cl isNil ].
  classNames
    do: [ :className | 
      | supersChain |
      supersChain := {className}.
      (Smalltalk at: className asSymbol ifAbsent: [  ])
        ifNotNil: [ :cl | 
          supersChain := cl withAllSuperclasses reversed.
          supersChain
            removeAllSuchThat: [ :class | (classes includes: class) not ] ].
      order add: supersChain contents -> className ].
  indents := IdentityDictionary new.
  order do: [ :assoc | indents at: assoc value put: assoc key size - 1 ].
  classNames := classNames asArray sorted: [ :a :b | a <= b ].
  results := OrderedCollection new.
  order
    do: [ :assoc | 
      | className element |
      className := assoc value.
      element := elementBlock value: className value: indents.
      results add: element ].
  ^ results asArray