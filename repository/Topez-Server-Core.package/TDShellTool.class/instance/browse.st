as yet unclassified
browse
  "
  browse amethod <method-spec>
  browse class <regex-pattern>
  browse diff <method-spec-1> <method-spec-2>
  browse hierarchy <class-name>
  browse list <definitionList-path> [@filter-block-path]
  browse method [#]<selector>  [@filter-block-path]
  browse package <package-name>
  browse project <project-name>
  browse psender [#]<selector>
  browse references <variableOrGlobalNameOrPathRef> [@filter-block-path]
  browse rmethod <regex-pattern> [@filter-block-path]
  browse rsender <regex-pattern> [@filter-block-path]
  browse sender [#]<selector> [@filter-block-path]
  browse source <regex-pattern> [@filter-block-path]
  browse versions <method-spec>
"

  | findTokens command selectBlock list |
  findTokens := tokens copyFrom: 2 to: tokens size.
  command := findTokens at: 1.
  command = 'amethod'
    ifTrue: [ ^ self browseMethods: (self findMethodSpec: findTokens) ].
  selectBlock := [ :each | true ].
  findTokens size > 2
    ifTrue: [ 
      ((findTokens at: 3) beginsWith: '@')
        ifTrue: [ selectBlock := self resolveAtPathReference: (findTokens at: 3) ] ].
  command = 'list'
    ifTrue: [ 
      list := findTokens size = 1
        ifTrue: [ objIn ]
        ifFalse: [ 
          | listToken |
          listToken := findTokens at: 2.
          (topez lookup: listToken) dotSelfObject ].
      list := list select: selectBlock.
      ^ self browseMethods: list ].
  command = 'method'
    ifTrue: [ 
      list := (self findMethod: (findTokens at: 2)) select: selectBlock.
      ^ self browseMethods: list ].
  command = 'diff'
    ifTrue: [ ^ self browseDiff: (self findMethods: findTokens) ].
  command = 'psender'
    ifTrue: [ 
      list := (self findPureSender: (findTokens at: 2)) select: selectBlock.
      ^ self browseMethods: list ].
  command = 'sender'
    ifTrue: [ 
      list := (self findSender: (findTokens at: 2)) select: selectBlock.
      ^ self browseMethods: list ].
  command = 'versions'
    ifTrue: [ ^ self browseMethods: (self findVersions: findTokens) ].
  command = 'references'
    ifTrue: [ 
      list := (self findReferences: (findTokens at: 2)) select: selectBlock.
      ^ self browseMethods: list ].
  command = 'rmethod'
    ifTrue: [ 
      list := (self findRegexMethod: (findTokens at: 2)) select: selectBlock.
      ^ self browseMethods: list ].
  command = 'rsender'
    ifTrue: [ 
      list := (self findRegexSender: (findTokens at: 2)) select: selectBlock.
      ^ self browseMethods: list ].
  command = 'source'
    ifTrue: [ 
      list := (self findSource: (findTokens at: 2)) select: selectBlock.
      ^ self browseMethods: list ].
  command = 'package'
    ifTrue: [ ^ self browseClasses: (self findPackageDefinitions: (findTokens at: 2)) ].
  command = 'project'
    ifTrue: [ ^ self browseClasses: (self findProjectDefinitions: (findTokens at: 2)) ].
  command = 'class'
    ifTrue: [ ^ self browseClasses: (self findClass: (findTokens at: 2)) ].
  command = 'hierarchy'
    ifTrue: [ ^ self browseClasses: (self findClassHierarchy: (findTokens at: 2)) ]