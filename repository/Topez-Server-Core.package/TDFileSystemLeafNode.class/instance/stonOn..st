as yet unclassified
stonOn: stonWriter
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode stonOn: stonWriter ]
    ifFalse: [ self halt ]