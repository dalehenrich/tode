merge
applyTo: aTDGitMerger
  self selectedSourceRaw
    ifNil: [ 
      (self baseDirectory fileExists: self filePath)
        ifTrue: [ aTDGitMerger gitTool gitrmIn: self baseDirectory with: ' -rf ' , self filePath ] ]
    ifNotNil: [ :src | 
      self baseDirectory
        forceNewFileNamed: self filePath
        do: [ :fileStream | fileStream nextPutAll: src withUnixLineEndings encodeAsUTF8intoString ].
      aTDGitMerger gitTool gitaddIn: self baseDirectory with: self filePath ]