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
              classMap
                at: #'edit'
                ifAbsent: [ 
                  "force lookup"
                  classMap := nil ] ] ].
      classMap ifNil: [ class := class superclass ] ].
  className := classMap == nil
    ifTrue: [ 
      'TDClientListElementBuilder' = defaultClassname
        ifTrue: [ 
          "TDClientListElementBuilder is not a FUNCTIONAL default"
          self halt ].
      defaultClassname ]
    ifFalse: [ 
      classMap
        at: anAspect
        ifAbsent: [ 
          classMap
            at: #'edit'
            ifAbsent: [ 
              'TDClientListElementBuilder' = defaultClassname
                ifTrue: [ 
                  "TDClientListElementBuilder is not a FUNCTIONAL default"
                  self halt ].
              defaultClassname ] ] ].
  ^ Smalltalk at: className asSymbol