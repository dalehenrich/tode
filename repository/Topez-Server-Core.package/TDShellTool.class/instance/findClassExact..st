find
findClassExact: className
  (Smalltalk classNamed: className)
    ifNil: [ ^ #() ]
    ifNotNil: [ :cls | ^ {(TDClassDefinition className: cls theNonMetaClass name)} ]