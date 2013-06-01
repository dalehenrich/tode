as yet unclassified
theBehavior
  ^ self object isBehavior
    ifTrue: [ self object ]
    ifFalse: [ self object class ]