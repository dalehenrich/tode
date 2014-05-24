as yet unclassified
backupFileNode
  ^ topez currentNode
    childNamed: 'backupFile'
    ifAbsent: [ nil error: 'Cannot find `backupFile` node' ]