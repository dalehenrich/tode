converting
asTDBehaviorDefinition
  ^ (TDBehaviorReferenceDefinition behavior: self theBehavior)
    appEnv: self appEnv;
    yourself