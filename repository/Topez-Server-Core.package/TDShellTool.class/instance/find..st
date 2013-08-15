as yet unclassified
find: findTokens
  | command |
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
    ifTrue: [ ^ self findClass: findTokens ].
  command = 'package'
    ifTrue: [ ^ self findPackageDefinitions: findTokens ].
  command = 'project'
    ifTrue: [ ^ self findProjectDefinitions: findTokens ].
  command = 'hierarchy'
    ifTrue: [ ^ self findClassHierarchy: findTokens ]