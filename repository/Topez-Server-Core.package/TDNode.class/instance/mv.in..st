as yet unclassified
mv: destinationPath in: baseNode
  ^ self
    validate: #'mv'
    for: destinationPath
    in: baseNode
    andDo: [ :destinationDirectoryNode :newName | self moveTo: destinationDirectoryNode as: newName ]