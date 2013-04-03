as yet unclassified
baseClassNamesList
  ^ {((self object isBehavior
    ifTrue: [ self object theNonMetaClass ]
    ifFalse: [ self object class theNonMetaClass ]) name)}