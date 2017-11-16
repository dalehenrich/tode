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
      [ aTDGitMerger gitTool gitrmIn: self baseDirectory with: rmArgs , self filePath ]
        on: TodeCommandError
        do: [ :ignored | 
          "okay for the git rm command to fail --- it means file is already gone and the file is not part of working set"
           ] ]
    ifNotNil: [ :src | 
      self baseDirectory
        forceNewFileNamed: self filePath
        do: [ :fileStream | fileStream nextPutAll: src withUnixLineEndings encodeAsUTF8intoString ].
      aTDGitMerger gitTool gitaddIn: self baseDirectory with: self filePath ]