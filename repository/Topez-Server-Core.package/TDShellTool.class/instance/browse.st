as yet unclassified
browse
  "
  browse amethod <method-spec>
  browse class <regex-pattern>
  browse diff <method-spec-1> <method-spec-2>
  browse hierarchy <class-name>
  browse list <definitionList-path>
  browse method [#]<selector>
  browse package <package-name>
  browse project <project-name>
  browse references <variableOrGlobalNameOrPathRef>
  browse rmethod <regex-pattern>
  browse rsender <regex-pattern>
  browse sender [#]<selector>
  browse source <regex-pattern>
  browse versions <method-spec>
"

  | findTokens command |
  findTokens := tokens copyFrom: 2 to: tokens size.
  command := findTokens at: 1.
  command = 'amethod'
    ifTrue: [ ^ self browseMethods: (self findMethodSpec: findTokens) ].
  command = 'list'
    ifTrue: [ 
      | list |
      list := findTokens size = 1
        ifTrue: [ objIn ]
        ifFalse: [ 
          | listToken |
          listToken := findTokens at: 2.
          (topez lookup: listToken) dotSelfObject ].
      ^ self browseMethods: list ].
  command = 'method'
    ifTrue: [ ^ self browseMethods: (self findMethod: findTokens) ].
  command = 'diff'
    ifTrue: [ ^ self browseDiff: (self findMethods: findTokens) ].
  command = 'sender'
    ifTrue: [ ^ self browseMethods: (self findSender: findTokens) ].
  command = 'versions'
    ifTrue: [ ^ self browseMethods: (self findVersions: findTokens) ].
  command = 'references'
    ifTrue: [ ^ self browseMethods: (self findReferences: findTokens) ].
  command = 'rmethod'
    ifTrue: [ ^ self browseMethods: (self findRegexMethod: findTokens) ].
  command = 'rsender'
    ifTrue: [ ^ self browseMethods: (self findRegexSender: findTokens) ].
  command = 'source'
    ifTrue: [ ^ self browseMethods: (self findSource: findTokens) ].
  command = 'package'
    ifTrue: [ ^ self browseClasses: (self findPackageDefinitions: findTokens) ].
  command = 'project'
    ifTrue: [ ^ self browseClasses: (self findProjectDefinitions: findTokens) ].
  command = 'class'
    ifTrue: [ ^ self browseClasses: (self findClass: findTokens) ].
  command = 'hierarchy'
    ifTrue: [ ^ self browseClasses: (self findClassHierarchy: findTokens) ]