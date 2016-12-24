private
lookupClass: name
  (System myUserProfile symbolList objectNamed: name)
    ifNotNil: [ :global | global isBehavior
        ifTrue: [ "it's one of my classes"
          ^ global ] ].
  ((AllUsers userWithId: self todeUserId) symbolList objectNamed: name)
    ifNotNil: [ :global | "It's one of todes classes"
      global isBehavior
        ifTrue: [ ^ global ] ].
  ^ classes at: name ifAbsentPut: [ "one more try"
      Object allSubclasses
        detect: [ :cls | cls stonName == name ]
        ifNone: [ self error: 'Cannot resolve class named ' , name printString ] ]