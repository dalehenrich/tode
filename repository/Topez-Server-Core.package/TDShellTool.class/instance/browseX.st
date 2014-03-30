as yet unclassified
browseX
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

  | findTokens command selectBlock list arg |
  self findProcessCommandOptions.
  findTokens := self arguments.
  command := findTokens at: 1.
  command = 'amethod'
    ifTrue: [ 
      list := self
        findMethodSpec: findTokens
        labelBlock: [ :methodSpec | arg := methodSpec ].
      ^ self browseMethods: list label: 'Implementors of: ' , arg ].
  selectBlock := [ :each | true ].
  findTokens size > 2
    ifTrue: [ 
      ((findTokens at: 3) beginsWith: '@')
        ifTrue: [ selectBlock := self resolveAtPathReference: (findTokens at: 3) ] ].
  command = 'list'
    ifTrue: [ 
      list := findTokens size = 1
        ifTrue: [ 
          arg := objIn printSring.
          objIn ]
        ifFalse: [ 
          | listToken |
          listToken := findTokens at: 2.
          arg := listToken.
          (topez lookup: listToken) dotSelfObject ].
      list := list select: selectBlock.
      ^ self browseMethods: list label: 'List: ' , arg ].
  command = 'method'
    ifTrue: [ 
      arg := findTokens at: 2.
      list := (self findMethod: arg) select: selectBlock.
      ^ self browseMethods: list label: 'Implementors of ' , arg ].
  command = 'diff'
    ifTrue: [ ^ self browseDiff: (self findMethods: findTokens) ].
  command = 'psender'
    ifTrue: [ 
      arg := findTokens at: 2.
      self options
        at: 'scriptPath'
        ifPresent: [ :scriptPath | ^ self browsePureSender: arg searchScriptRoot: scriptPath ].
      list := (self findPureSender: arg) select: selectBlock.
      ^ self browseMethods: list label: 'Senders of ' , arg ].
  command = 'sender'
    ifTrue: [ 
      arg := findTokens at: 2.
      self options
        at: 'scriptPath'
        ifPresent: [ :scriptPath | ^ self browseSender: arg searchScriptRoot: scriptPath ].
      list := (self findSender: arg) select: selectBlock.
      ^ self browseMethods: list label: 'Senders of ' , arg ].
  command = 'versions'
    ifTrue: [ 
      list := self
        findVersions: findTokens
        labelBlock: [ :methodSpec | arg := methodSpec ].
      ^ self browseMethods: list label: 'Versions of ' , arg ].
  command = 'references'
    ifTrue: [ 
      arg := findTokens at: 2.
      self options
        at: 'scriptPath'
        ifPresent: [ :scriptPath | ^ self browseReferences: arg searchScriptRoot: scriptPath ].
      list := (self findReferences: arg) select: selectBlock.
      ^ self browseMethods: list label: 'References to ' , arg ].
  command = 'rmethod'
    ifTrue: [ 
      arg := findTokens at: 2.
      list := (self findRegexMethod: arg) select: selectBlock.
      ^ self browseMethods: list label: 'Implementors of (regex): ' , arg ].
  command = 'rsender'
    ifTrue: [ 
      arg := findTokens at: 2.
      self options
        at: 'scriptPath'
        ifPresent: [ :scriptPath | ^ self browseRegexSender: arg searchScriptRoot: scriptPath ].
      list := (self findRegexSender: arg) select: selectBlock.
      ^ self browseMethods: list label: 'Senders of (regex): ' , arg ].
  command = 'source'
    ifTrue: [ 
      arg := findTokens at: 2.
      self options
        at: 'scriptPath'
        ifPresent: [ :scriptPath | ^ self browseSource: arg searchScriptRoot: scriptPath ].
      list := (self findSource: arg) select: selectBlock.
      ^ self browseMethods: list label: 'Source references: ' , arg ].
  arg := findTokens at: 2.
  command = 'package'
    ifTrue: [ 
      list := self findPackageDefinitions: arg.
      ^ self browseClasses: list label: 'Classes in package: ' , arg ].
  command = 'category'
    ifTrue: [ 
      list := self findCategoryClassDefinitions: arg.
      ^ self browseClasses: list label: 'Classes in category: ' , arg ].
  command = 'symbolList'
    ifTrue: [ 
      list := self findSymbolListDefinitions: arg.
      ^ self browseClasses: list label: 'Classes in symbolList: ' , arg ].
  command = 'project'
    ifTrue: [ 
      list := self findProjectDefinitions: arg.
      ^ self browseClasses: arg label: 'Classes in project: ' , arg ].
  command = 'class'
    ifTrue: [ 
      list := self findClass: arg.
      ^ self browseClasses: list label: 'Classes matching: ' , arg ].
  command = 'hierarchy'
    ifTrue: [ 
      list := self findClassHierarchy: {arg}.
      ^ self browseClasses: list label: 'Hierarchy for ' , arg ]