as yet unclassified
find
  "
  find method <pattern>
  find sender <pattern>
  find source <pattern>
  find class <pattern>
"

  | findTokens command |
  findTokens := tokens copyFrom: 2 to: tokens size.
  command := findTokens at: 1.
  command = 'method'
    ifTrue: [ ^ self findMethod: findTokens ].
  command = 'sender'
    ifTrue: [ ^ self findSender: findTokens ].
  command = 'source'
    ifTrue: [ ^ self findSource: findTokens ].
  command = 'class'
    ifTrue: [ ^ self findClass: findTokens ]