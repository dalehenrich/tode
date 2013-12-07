rsync
rsyncCopyNodeUsing: aSTONRsync
  (self name endsWith: self stonFileExtension)
    ifTrue: [ aSTONRsync rsyncCopyLeafNode: self asTDLeafNode ]
    ifFalse: [ aSTONRsync rsyncCopyFileSystemLeafNode: self ]