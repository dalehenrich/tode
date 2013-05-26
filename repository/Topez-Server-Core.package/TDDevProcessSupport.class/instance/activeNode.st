as yet unclassified
activeNode
  ^ topez currentNode
    childNamed: 'active'
    ifAbsent: [ nil error: 'Cannot find `active` node' ]