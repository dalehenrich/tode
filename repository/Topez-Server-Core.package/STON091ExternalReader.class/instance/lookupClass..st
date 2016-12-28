private
lookupClass: name
  (self applicationEnvironment globalNamed: name)
    ifNotNil: [ :global | global isBehavior
        ifTrue: [ "it's one of my classes"
          ^ global ] ].
  (self todeEnvironment globalNamed: name)
    ifNotNil: [ :global | "It's one of todes classes"
      global isBehavior
        ifTrue: [ ^ global ] ].
  ^ classes at: name ifAbsentPut: [ "one more try ... "
      (self applicationEnvironment globalNamed: 'Object') allSubclasses
        detect: [ :cls | cls stonName == name ]
        ifNone: [ self error: 'Cannot resolve class named ' , name printString ] ]