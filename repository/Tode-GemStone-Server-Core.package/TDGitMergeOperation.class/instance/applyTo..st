merge
applyTo: aTDGitMerger
  self selectedSourceRaw
    ifNil: [ 
      | rfArgs |
      rfArgs := ''.
      (self baseDirectory fileExists: self filePath)
        ifTrue: [ 
          "forcibly remove the file"
          rfArgs := ' -rf ' ].
      aTDGitMerger gitTool
        gitrmIn: self baseDirectory
        with: rfArgs , self filePath ]
    ifNotNil: [ :src | 
      self baseDirectory
        forceNewFileNamed: self filePath
        do: [ :fileStream | fileStream nextPutAll: src withUnixLineEndings encodeAsUTF8intoString ].
      aTDGitMerger gitTool gitaddIn: self baseDirectory with: self filePath ]