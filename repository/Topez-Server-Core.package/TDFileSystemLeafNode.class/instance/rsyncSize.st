rsync
rsyncSize
  ^ (self name endsWith: self stonFileExtension)
    ifTrue: [ self asTDLeafNode rsyncSize ]
    ifFalse: [ self halt ]