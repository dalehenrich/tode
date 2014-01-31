as yet unclassified
browse
  "
  browse [--scriptPath=<tode-path>] browse-command [<browse-arguments>]
  browse amethod <method-spec>
  browse category <regex-pattern>
  browse class <regex-pattern>
  browse diff <method-spec-1> <method-spec-2>
  browse hierarchy <class-name>
  browse list <definitionList-path> [@filter-block-path]
  browse method [#]<selector>  [@filter-block-path]
  browse package <package-name>
  browse project <project-name>
  browse [--scriptPath=<tode-path>] psender [#]<selector>
  browse [--scriptPath=<tode-path>] references <variableOrGlobalNameOrPathRef> [@filter-block-path]
  browse rmethod <regex-pattern> [@filter-block-path]
  browse [--scriptPath=<tode-path>] rsender <regex-pattern> [@filter-block-path]
  browse [--scriptPath=<tode-path>] sender [#]<selector> [@filter-block-path]
  browse [--scriptPath=<tode-path>] source <regex-pattern> [@filter-block-path]
  browse symbolList <regex-pattern>
  browse versions <method-spec>
"

  | findTokens command selectBlock list |
  self findProcessCommandOptions.
  findTokens := self arguments.
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
      self options
        at: 'scriptPath'
        ifPresent: [ :scriptPath | ^ self browsePureSender: (findTokens at: 2) searchScriptRoot: scriptPath ].
      list := (self findPureSender: (findTokens at: 2)) select: selectBlock.
      ^ self browseMethods: list ].
  command = 'sender'
    ifTrue: [ 
      self options
        at: 'scriptPath'
        ifPresent: [ :scriptPath | ^ self browseSender: (findTokens at: 2) searchScriptRoot: scriptPath ].
      list := (self findSender: (findTokens at: 2)) select: selectBlock.
      ^ self browseMethods: list ].
  command = 'versions'
    ifTrue: [ ^ self browseMethods: (self findVersions: findTokens) ].
  command = 'references'
    ifTrue: [ 
      self options
        at: 'scriptPath'
        ifPresent: [ :scriptPath | ^ self browseReferences: (findTokens at: 2) searchScriptRoot: scriptPath ].
      list := (self findReferences: (findTokens at: 2)) select: selectBlock.
      ^ self browseMethods: list ].
  command = 'rmethod'
    ifTrue: [ 
      list := (self findRegexMethod: (findTokens at: 2)) select: selectBlock.
      ^ self browseMethods: list ].
  command = 'rsender'
    ifTrue: [ 
      self options
        at: 'scriptPath'
        ifPresent: [ :scriptPath | ^ self browseRegexSender: (findTokens at: 2) searchScriptRoot: scriptPath ].
      list := (self findRegexSender: (findTokens at: 2)) select: selectBlock.
      ^ self browseMethods: list ].
  command = 'source'
    ifTrue: [ 
      self options
        at: 'scriptPath'
        ifPresent: [ :scriptPath | ^ self browseSource: (findTokens at: 2) searchScriptRoot: scriptPath ].
      list := (self findSource: (findTokens at: 2)) select: selectBlock.
      ^ self browseMethods: list ].
  command = 'package'
    ifTrue: [ ^ self browseClasses: (self findPackageDefinitions: (findTokens at: 2)) ].
  command = 'category'
    ifTrue: [ ^ self browseClasses: (self findCategoryClassDefinitions: (findTokens at: 2)) ].
  command = 'symbolList'
    ifTrue: [ ^ self browseClasses: (self findSymbolListDefinitions: (findTokens at: 2)) ].
  command = 'project'
    ifTrue: [ ^ self browseClasses: (self findProjectDefinitions: (findTokens at: 2)) ].
  command = 'class'
    ifTrue: [ ^ self browseClasses: (self findClass: (findTokens at: 2)) ].
  command = 'hierarchy'
    ifTrue: [ ^ self browseClasses: (self findClassHierarchy: (findTokens at: 2)) ]