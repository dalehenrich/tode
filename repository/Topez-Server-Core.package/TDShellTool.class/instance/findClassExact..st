find
findClassExact: className
  | appEnv |
  appEnv := self applicationEnvironment.
  (appEnv globalNamed: className)
    ifNil: [ ^ #() ]
    ifNotNil: [ :cls | 
      ^ {(cls asTDClassDefinition
        appEnv: appEnv;
        yourself)} ]