converting
asTDBehaviorDefinition
  ^ (TDBehaviorDefinition className: self className isMeta: self isMeta)
    username: self username;
    yourself