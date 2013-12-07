accessing
lookupClassNameFor: aClass aspect: anAspect defaultAspect: defaultAspect in: nodeDictionary do: aBlock
  | class classMap className |
  class := aClass.
  [ class notNil and: [ classMap isNil ] ]
    whileTrue: [ 
      classMap := nodeDictionary at: class name ifAbsent: [  ].
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
      anAspect ~~ defaultAspect
        ifTrue: [ 
          "if anAspect is not found at all, default to <defaultAspect>"
          ^ self
            lookupClassNameFor: class
            aspect: defaultAspect
            defaultAspect: defaultAspect
            in: nodeDictionary
            do: aBlock ].
      ^ aBlock value: nil ]
    ifFalse: [ classMap at: anAspect ifAbsent: [ self error: 'did not expect to get here' ] ].
  ^ aBlock value: className