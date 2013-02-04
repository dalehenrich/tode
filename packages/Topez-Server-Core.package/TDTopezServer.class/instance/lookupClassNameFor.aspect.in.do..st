accessing
lookupClassNameFor: anObject aspect: anAspect in: nodeDictionary do: aBlock
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
      anAspect ~~ #'view'
        ifTrue: [ 
          "if anAspect is not found at all, default to #view"
          ^ self
            lookupClassNameFor: anObject
            aspect: #'view'
            in: nodeDictionary
            do: aBlock ].
      ^ aBlock value: nil ]
    ifFalse: [ classMap at: anAspect ifAbsent: [ self error: 'did not expect to get here' ] ].
  ^ aBlock value: className