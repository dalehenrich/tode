converting
asTDBehaviorDefinition
  ^ (TDBehaviorReferenceDefinition behavior: self theBehavior)
    username: self username;
    yourself