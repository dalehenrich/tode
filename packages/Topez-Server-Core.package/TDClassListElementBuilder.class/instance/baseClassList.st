as yet unclassified
baseClassList
  ^ (self object
    collect: [ :obj | 
      obj isBehavior
        ifTrue: [ obj theNonMetaClass ]
        ifFalse: [ obj class theNonMetaClass ] ]) asArray