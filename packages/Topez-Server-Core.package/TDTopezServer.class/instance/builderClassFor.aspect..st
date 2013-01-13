accessing
builderClassFor: anObject aspect: anAspect
  | builders class builderClassMap builderClassName |
  builders := self class nodeBuilders.
  class := anObject class.
  [ class notNil and: [ builderClassMap isNil ] ]
    whileTrue: [ 
      builderClassMap := builders at: class className ifAbsent: [  ].
      builderClassMap ifNil: [ class := class superclass ] ].
  builderClassName := builderClassMap == nil
    ifTrue: [ 'TDObjectNodeBuilder' ]
    ifFalse: [ builderClassMap at: anAspect ifAbsent: [ builderClassMap at: #'default' ifAbsent: [ 'TDObjectNodeBuilder' ] ] ].
  ^ Smalltalk at: builderClassName asSymbol