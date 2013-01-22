accessing
nodeClassFor: anObject aspect: anAspect in: nodeDictionary ifAbsent: defaultClassname
  | class classMap className |
  class := anObject class.
  [ class notNil and: [ classMap isNil ] ]
    whileTrue: [ 
      classMap := nodeDictionary at: class className ifAbsent: [  ].
      classMap
        ifNotNil: [ 
          classMap
            at: anAspect
            ifAbsent: [ 
              "force lookup up class hierarchy for exact match"
              classMap := nil ] ].
      classMap ifNil: [ class := class superclass ] ].
  className := classMap == nil
    ifTrue: [ 
      anAspect ~~ #'edit'
        ifTrue: [ 
          "if anAspect is not found at all, default to #edit"
          ^ self
            nodeClassFor: anObject
            aspect: #'edit'
            in: nodeDictionary
            ifAbsent: defaultClassname ].
      'TDClientListElementBuilder' = defaultClassname
        ifTrue: [ 
          "TDClientListElementBuilder is not a FUNCTIONAL default"
          self halt ].
      defaultClassname ]
    ifFalse: [ classMap at: anAspect ifAbsent: [ self error: 'did not expect to get here' ] ].
  ^ Smalltalk at: className asSymbol