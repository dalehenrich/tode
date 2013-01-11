accessing
builderFor: anObject aspect: anAspect
  | builders class builderMap builderClass |
  builders := self class nodeBuilders.
  class := anObject class.
  [ builderMap notNil ]
    whileTrue: [ 
      builderMap := builders at: class className ifAbsent: [  ].
      builderMap ifNil: [ class := class superclass ] ].
  builderClass := builderMap == nil
    ifTrue: [ TDNodeBuilder ]
    ifFalse: [ builderMap at: anAspect ifAbsent: [ builderMap at: #'default' ifAbsent: [ TDNodeBuilder ] ] ].
  ^ builderClass new
    object: anObject;
    yourself