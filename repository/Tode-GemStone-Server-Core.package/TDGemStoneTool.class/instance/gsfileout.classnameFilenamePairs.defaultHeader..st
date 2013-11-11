as yet unclassified
gsfileout: directoryPath classnameFilenamePairs: classnameFilenamePairs defaultHeader: defaultHeader
  | directory |
  directory := ServerFileDirectory on: directoryPath.
  classnameFilenamePairs
    do: [ :pair | 
      self
        gsfileout: directoryPath
        classes: {(pair at: 1)}
        filename: (pair at: 2)
        defaultHeader: defaultHeader ].
  ^ classnameFilenamePairs