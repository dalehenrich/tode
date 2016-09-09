initialization
populateChildNodesFor: object ofClass: objectClass
  | specialChildNames indexableSize indexableEndIndex moreElements ivs dvs |
  childNodeNamedOops := Dictionary new.
  specialChildNames := #('(class)' '(oop)' '<<more>>').
  ivs := objectClass allInstVarNames collect: [ :each | each asString ].
  1 to: ivs size do: [ :i | childNodeNamedOops at: (ivs at: i) put: (object instVarAt: i) asOop ].
  dvs := object dynamicInstanceVariables collect: [ :each | each asString ].
  dvs
    do: [ :name | 
      childNodeNamedOops
        at: name
        put: (object dynamicInstanceVariableAt: name asSymbol) asOop ].
  moreElements := #().
  indexableSize := Reflection sizeOf: object.
  indexableSize > self indexableWindowSize
    ifTrue: [ 
      indexableEndIndex := self indexableWindowSize min: indexableSize.
      indexableEndIndex < indexableSize
        ifTrue: [ moreElements := #('<<more>>') ] ]
    ifFalse: [ indexableEndIndex := indexableSize - ivs size ].
  childNodeIndexableOops := Array new: indexableEndIndex.
  (1 to: indexableEndIndex)
    do: [ :i | childNodeIndexableOops at: i put: (object _at: i) asOop ].
  childNodeNames := specialChildNames
    , (ivs , dvs sortWithBlock: [ :a :b | a <= b ])
    , ((1 to: indexableEndIndex) collect: [ :each | each asString ])
    , moreElements