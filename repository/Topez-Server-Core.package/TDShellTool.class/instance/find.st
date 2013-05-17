as yet unclassified
find
  "
  find class <regex-pattern>
  find method [#]<selector>
  find methods <method-spec> <method-spec>
  find references <variableOrGlobalNameOrPathRef>
  find rmethod <regex-pattern>
  find rsender <regex-pattern>
  find sender [#]<selector>
  find source <regex-pattern>
  find versions <method-spec>
"

  | findTokens command |
  findTokens := tokens copyFrom: 2 to: tokens size.
  command := findTokens at: 1.
  command = 'method'
    ifTrue: [ ^ self findMethod: findTokens ].
  command = 'methods'
    ifTrue: [ ^ self findMethods: findTokens ].
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