as yet unclassified
cp: destinationPath in: baseNode
  ^ self
    validate: #'cp'
    for: destinationPath
    in: baseNode
    andDo: [ :destinationDirectoryNode :newName | self copyTo: destinationDirectoryNode as: newName ]