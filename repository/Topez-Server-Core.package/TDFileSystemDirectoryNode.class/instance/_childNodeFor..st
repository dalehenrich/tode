as yet unclassified
_childNodeFor: childName
  ^ (self fileDirectory directoryEntryFor: childName) asTDFileSystemNode
    parent: self;
    yourself