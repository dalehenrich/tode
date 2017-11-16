as yet unclassified
asTDClassDefinition
  ^ (TDBehaviorDefinition className: self className isMeta: false)
    appEnv: self appEnv;
    yourself