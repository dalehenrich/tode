as yet unclassified
baseClassList
  ^ {(self object isBehavior
    ifTrue: [ self object theNonMetaClass ]
    ifFalse: [ self object class theNonMetaClass ])}