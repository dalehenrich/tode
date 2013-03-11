as yet unclassified
find
  "
  find method <selector>
  find sender <selector>
  find rmethod <regex-pattern>
  find rsender <regex-pattern>
  find source <regex-pattern>
  find class <regex-pattern>
"

  | findTokens command |
  findTokens := tokens copyFrom: 2 to: tokens size.
  command := findTokens at: 1.
  command = 'method'
    ifTrue: [ ^ self findMethod: findTokens ].
  command = 'sender'
    ifTrue: [ ^ self findSender: findTokens ].
  command = 'versions'
    ifTrue: [ ^ self findVersions: findTokens ].
  command = 'references'
    ifTrue: [ ^ self findReferences: findTokens ].
  command = 'rmethod'
    ifTrue: [ ^ self findRegexMethod: findTokens ].
  command = 'rsender'
    ifTrue: [ ^ self findRegexSender: findTokens ].
  command = 'source'
    ifTrue: [ ^ self findSource: findTokens ].
  command = 'class'
    ifTrue: [ ^ self findClass: findTokens ]