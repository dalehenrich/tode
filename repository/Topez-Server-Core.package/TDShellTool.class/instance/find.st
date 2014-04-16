as yet unclassified
find
  "
  find [--scriptPath=<tode-path>] find-command [<find-arguments>]
  find amethod <method-spec> 
  find categories
  find category <regex-pattern>
  find class <regex-pattern>
  find hierarchy <class-name>
  find method [#]<selector>
  find methods <method-spec-1> <method-spec-2>
  find package <package-name>
  find project <project-name>
  find psender [#]<selector>
  find references <variableOrGlobalNameOrPathRef>
  find rmethod <regex-pattern>
  find rsender <regex-pattern>
  find sender [#]<selector>
  find source <regex-pattern>
  find versions <method-spec>
"

  | findTokens command |
  self findProcessCommandOptions.
  findTokens := self arguments.
  command := findTokens at: 1.
  command = 'method'
    ifTrue: [ ^ self findMethod: (findTokens at: 2) ].
  command = 'methods'
    ifTrue: [ ^ self findMethods: findTokens ].
  command = 'psender'
    ifTrue: [ ^ self findPureSender: (findTokens at: 2) ].
  command = 'sender'
    ifTrue: [ ^ self findSender: (findTokens at: 2) ].
  command = 'versions'
    ifTrue: [ ^ self findVersions: findTokens labelBlock: [ :ignored |  ] ].
  command = 'references'
    ifTrue: [ ^ self findReferences: (findTokens at: 2) ].
  command = 'rmethod'
    ifTrue: [ ^ self findRegexMethod: (findTokens at: 2) ].
  command = 'rsender'
    ifTrue: [ ^ self findRegexSender: (findTokens at: 2) ].
  command = 'source'
    ifTrue: [ ^ self findSource: (findTokens at: 2) ].
  command = 'class'
    ifTrue: [ ^ self findClass: (findTokens at: 2) ].
  command = 'package'
    ifTrue: [ ^ self findPackageDefinitions: (findTokens at: 2) ].
  command = 'categories'
    ifTrue: [ ^ self findCategoryDefinitions ].
  command = 'category'
    ifTrue: [ ^ self findCategoryClassDefinitions: (findTokens at: 2) ].
  command = 'project'
    ifTrue: [ ^ self findProjectDefinitions: (findTokens at: 2) ].
  command = 'hierarchy'
    ifTrue: [ ^ self findClassHierarchy: {(findTokens at: 2)} ]