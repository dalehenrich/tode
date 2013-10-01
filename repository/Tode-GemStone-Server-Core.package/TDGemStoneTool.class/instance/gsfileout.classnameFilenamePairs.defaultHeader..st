as yet unclassified
gsfileout: directoryPath classnameFilenamePairs: classnameFilenamePairs defaultHeader: defaultHeader
  | directory |
  directory := ServerFileDirectory on: directoryPath.
  classnameFilenamePairs
    do: [ :pair | 
      | header |
      header := self gsfileoutExtractHeaderFor: pair in: directory.
      header isEmpty
        ifTrue: [ header := defaultHeader ].
      directory
        forceNewFileNamed: (pair at: 2)
        do: [ :fileStream | 
          self
            gsfileoutClass: (Smalltalk classNamed: (pair at: 1))
            header: header
            on: fileStream ] ].
  ^ classnameFilenamePairs