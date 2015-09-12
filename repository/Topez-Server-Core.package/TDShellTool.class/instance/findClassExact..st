find
findClassExact: className
  (Smalltalk classNamed: className)
    ifNil: [ ^ #() ]
    ifNotNil: [ :cls | ^ {(cls asTDClassDefinition)} ]