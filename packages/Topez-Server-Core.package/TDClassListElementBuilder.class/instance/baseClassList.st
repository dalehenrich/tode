as yet unclassified
baseClassList
  | baseClasses |
  baseClasses := self object
    collect: [ :obj | 
      obj isBehavior
        ifTrue: [ obj theNonMetaClass ]
        ifFalse: [ obj class theNonMetaClass ] ].
  ^ baseClasses collect: [ :baseClass | Smalltalk classNamed: baseClass className ]