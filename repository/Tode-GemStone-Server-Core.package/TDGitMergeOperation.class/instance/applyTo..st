as yet unclassified
applyTo: aTDGitMerger
  self baseDirectory
    forceNewFileNamed: self filePath
    do: [ :fileStream | fileStream nextPutAll: self selectedSource ].
  aTDGitMerger gitTool gitaddIn: self baseDirectory with: self filePath