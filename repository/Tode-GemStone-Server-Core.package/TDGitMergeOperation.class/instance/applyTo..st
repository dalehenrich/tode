as yet unclassified
applyTo: aTDGitMerger
  self selectedSourceRaw
    ifNil: [ 
      (self baseDirectory fileExists: self filePath)
        ifTrue: [ self baseDirectory deleteFileNamed: self filePath ] ]
    ifNotNil: [ :src | 
      self baseDirectory
        forceNewFileNamed: self filePath
        do: [ :fileStream | fileStream nextPutAll: src ] ].
  aTDGitMerger gitTool gitaddIn: self baseDirectory with: self filePath