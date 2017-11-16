find
findClass: regexPattern
  "find class <regex-pattern>"

  | regex appEnv |
  regex := self findRegex: regexPattern.
  regex ifNil: [ ^ #() ].
  appEnv := self applicationEnvironment.
  ^ (self classOrganizer classes asArray
    select: [ :cls | regex search: cls name asString ])
    collect: [ :cls | 
      cls asTDClassDefinition
        appEnv: appEnv;
        yourself ]