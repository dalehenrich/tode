as yet unclassified
asTDClassDefinition
  ^ (TDBehaviorDefinition className: self className isMeta: false)
    username: self username;
    yourself