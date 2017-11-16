converting
asTDBehaviorDefinition
  ^ (TDBehaviorDefinition className: self className isMeta: self isMeta)
    appEnv: self appEnv;
    yourself