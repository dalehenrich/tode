as yet unclassified
asTDClassDefinition
  ^ (TDBehaviorReferenceDefinition behavior: self theClass)
    appEnv: self appEnv;
    yourself