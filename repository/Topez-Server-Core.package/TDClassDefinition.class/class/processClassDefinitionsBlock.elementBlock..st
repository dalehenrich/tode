as yet unclassified
processClassDefinitionsBlock: classDefinitionsBlock elementBlock: elementBlock
  | order classDefinitions indents results classes |
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
  classDefinitions := classDefinitionsBlock value.
  classes := (classDefinitions collect: [ :classDef | classDef theClass ])
    reject: [ :cl | cl isNil ].
  classDefinitions
    do: [ :classDef | 
      | supersChain |
      supersChain := {classDef}.
      classDef theClass
        ifNotNil: [ :cls | 
          supersChain := ({cls} , cls allSuperClasses) reversed.
          supersChain
            removeAllSuchThat: [ :class | (classes includes: class) not ].
          supersChain := supersChain
            collect: [ :cl | 
              cls == cl
                ifTrue: [ classDef ]
                ifFalse: [ 
                  (TDClassDefinition fromClassWithHistory: cl)
                    username: classDef username;
                    yourself ] ] ].
      order add: supersChain -> classDef ].
  indents := IdentityDictionary new.
  order do: [ :assoc | indents at: assoc value put: assoc key size - 1 ].
  results := OrderedCollection new.
  order
    do: [ :assoc | 
      | classDef element |
      classDef := assoc value.
      element := elementBlock value: classDef value: indents.
      results add: element ].
  ^ results asArray