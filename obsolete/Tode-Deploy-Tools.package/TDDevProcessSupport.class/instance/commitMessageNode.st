as yet unclassified
commitMessageNode
  ^ topez currentNode
    childNamed: 'commitMessage'
    ifAbsent: [ nil error: 'Cannot find `commitMessage` node' ]