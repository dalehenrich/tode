as yet unclassified
browse
  "
  browse class <regex-pattern>
  browse method <selector>
  browse references <variableOrGlobalName>
  browse rmethod <regex-pattern>
  browse rsender <regex-pattern>
  browse sender <selector>
  browse source <regex-pattern>
"

  | findTokens command messagePattern |
  findTokens := tokens copyFrom: 2 to: tokens size.
  command := findTokens at: 1.
  messagePattern := findTokens at: 2.
  command = 'method'
    ifTrue: [ ^ self browseMethods: (self findMethod: findTokens) messagePattern: messagePattern ].
  command = 'sender'
    ifTrue: [ ^ self browseMethods: (self findSender: findTokens) messagePattern: messagePattern ].
  command = 'references'
    ifTrue: [ ^ self browseMethods: (self findReferences: findTokens) messagePattern: messagePattern ].
  command = 'rmethod'
    ifTrue: [ ^ self browseMethods: (self findRegexMethod: findTokens) messagePattern: messagePattern isRegex: true ].
  command = 'rsender'
    ifTrue: [ ^ self browseMethods: (self findRegexSender: findTokens) messagePattern: messagePattern isRegex: true ].
  command = 'source'
    ifTrue: [ ^ self browseMethods: (self findSource: findTokens) messagePattern: messagePattern isRegex: true ].
  command = 'class'
    ifTrue: [ ^ self browseClasses: (self findClass: findTokens) ]