as yet unclassified
gsfileout: directoryPath categoryFilenamePairs: categoryFilenamePairs defaultHeader: defaultHeader
  | directory findTool |
  directory := ServerFileDirectory on: directoryPath.
  findTool := self topez toolInstanceFor: 'find'.
  categoryFilenamePairs
    do: [ :pair | 
      | classNameList |
      classNameList := (findTool findCategoryClassDefinitions: (pair at: 1))
        collect: [ :def | def className ].
      self
        gsfileout: directoryPath
        classes: classNameList
        filename: (pair at: 2)
        defaultHeader: defaultHeader ].
  ^ categoryFilenamePairs