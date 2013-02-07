as yet unclassified
browse
  "
  browse method <selector>
  browse sender <selector>
  browse rmethod <regex-pattern>
  browse rsender <regex-pattern>
  browse source <regex-pattern>
  browse class <regex-pattern>
"

  | findTokens command |
  findTokens := tokens copyFrom: 2 to: tokens size.
  command := findTokens at: 1.
  command = 'method'
    ifTrue: [ ^ self browseMethods: (self findMethod: findTokens) ].
  command = 'sender'
    ifTrue: [ ^ self browseMethods: (self findSender: findTokens) ].
  command = 'rmethod'
    ifTrue: [ ^ self browseMethods: (self findRegexMethod: findTokens) ].
  command = 'rsender'
    ifTrue: [ ^ self browseMethods: (self findRegexSender: findTokens) ].
  command = 'source'
    ifTrue: [ ^ self browseMethods: (self findSource: findTokens) ].
  command = 'class'
    ifTrue: [ ^ self browseClasses: (self findClass: findTokens) ]