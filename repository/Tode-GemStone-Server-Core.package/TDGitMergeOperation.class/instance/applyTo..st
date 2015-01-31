merge
applyTo: aTDGitMerger
  self selectedSourceRaw
    ifNil: [ aTDGitMerger gitTool gitrmIn: self baseDirectory with: ' -rf ' , self filePath ]
    ifNotNil: [ :src | 
      self baseDirectory
        forceNewFileNamed: self filePath
        do: [ :fileStream | fileStream nextPutAll: src withUnixLineEndings encodeAsUTF8 asString ].
      aTDGitMerger gitTool gitaddIn: self baseDirectory with: self filePath ]