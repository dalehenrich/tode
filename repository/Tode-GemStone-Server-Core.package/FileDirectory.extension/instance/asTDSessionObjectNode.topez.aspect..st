*tode-gemstone-server-core
asTDSessionObjectNode: parentNode topez: aTopez aspect: aBuilderAspect
  "Create a node with a non-persisent connection to self ..."

  "if we're using the #inspect builderAspect then we want to see the node itself, not the dotSelfObject"

  | modTime entry |
  aBuilderAspect == #'inspect'
    ifTrue: [ ^ super asTDSessionObjectNode: parentNode topez: aTopez aspect: aBuilderAspect ].
  modTime := GsFile _fileModTime: self pathString onClient: self onClient.
  entry := (DirectoryEntry
    name: self localName
    creationTime: modTime
    modificationTime: modTime
    dirFlag: true
    fileSize: 0)
    sourceDirectory: self containingDirectory;
    yourself.
  ^ entry asTDFileSystemNode
    parent: parentNode;
    topez: aTopez;
    builderAspect: aBuilderAspect;
    yourself