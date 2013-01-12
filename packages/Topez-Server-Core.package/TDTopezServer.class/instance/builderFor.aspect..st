accessing
builderFor: anObject aspect: anAspect
  | builders class builderClassMap builderClassName |
  builders := self class nodeBuilders.
  class := anObject class.
  [ builderClassMap isNil ]
    whileTrue: [ 
      builderClassMap := builders at: class className ifAbsent: [  ].
      builderClassMap ifNil: [ class := class superclass ] ].
  builderClassName := builderClassMap == nil
    ifTrue: [ 'TDNodeBuilder' ]
    ifFalse: [ builderClassMap at: anAspect ifAbsent: [ builderClassMap at: #'default' ifAbsent: [ 'TDNodeBuilder' ] ] ].
  ^ (Smalltalk at: builderClassName asSymbol) new
    object: anObject;
    yourself