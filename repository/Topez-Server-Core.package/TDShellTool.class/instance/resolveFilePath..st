as yet unclassified
resolveFilePath: filePath
  ^ (filePath beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: filePath ]
    ifFalse: [ filePath ]