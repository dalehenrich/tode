accessing
nodeClassFor: anObject aspect: anAspect in: nodeDictionary ifAbsent: defaultClassname
  | class classMap className |
  class := anObject class.
  [ class notNil and: [ classMap isNil ] ]
    whileTrue: [ 
      classMap := nodeDictionary at: class className ifAbsent: [  ].
      classMap ifNil: [ class := class superclass ] ].
  className := classMap == nil
    ifTrue: [ defaultClassname ]
    ifFalse: [ classMap at: anAspect ifAbsent: [ classMap at: #'edit' ifAbsent: [ defaultClassname ] ] ].
  ^ Smalltalk at: className asSymbol