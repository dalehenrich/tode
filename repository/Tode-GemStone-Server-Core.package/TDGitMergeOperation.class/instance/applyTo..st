merge
applyTo: aTDGitMerger
  self selectedSourceRaw
    ifNil: [ 
      | rmArgs |
      rmArgs := ''.
      (self baseDirectory fileExists: self filePath)
        ifTrue: [ 
          "forcibly remove the file"
          rmArgs := ' -rf ' ]
        ifFalse: [ rmArgs := ' -f ' ].
      aTDGitMerger gitTool
        gitrmIn: self baseDirectory
        with: rmArgs , self filePath ]
    ifNotNil: [ :src | 
      self baseDirectory
        forceNewFileNamed: self filePath
        do: [ :fileStream | fileStream nextPutAll: src withUnixLineEndings encodeAsUTF8intoString ].
      aTDGitMerger gitTool gitaddIn: self baseDirectory with: self filePath ]