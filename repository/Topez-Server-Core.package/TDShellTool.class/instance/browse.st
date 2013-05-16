as yet unclassified
browse
  "
  browse amethod <method-spec>
  browse class <regex-pattern>
  browse diff <method1-spec> <method2-spec>
  browse method <selector>
  browse references <variableOrGlobalNameOrPathRef>
  browse rmethod <regex-pattern>
  browse rsender <regex-pattern>
  browse sender <selector>
  browse source <regex-pattern>
  browse versions <method-spec>
"

  | findTokens command messagePattern |
  findTokens := tokens copyFrom: 2 to: tokens size.
  command := findTokens at: 1.
  messagePattern := findTokens at: 2.
  command = 'amethod'
    ifTrue: [ ^ self browseMethods: (self findMethodSpec: findTokens) ].
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
  command = 'class'
    ifTrue: [ ^ self browseClasses: (self findClass: findTokens) ]