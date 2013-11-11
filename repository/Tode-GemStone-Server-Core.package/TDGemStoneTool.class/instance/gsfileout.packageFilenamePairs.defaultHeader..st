as yet unclassified
gsfileout: directoryPath packageFilenamePairs: packageFilenamePairs defaultHeader: defaultHeader
  | directory mcTool |
  directory := ServerFileDirectory on: directoryPath.
  mcTool := self topez toolInstanceFor: 'mc'.
  packageFilenamePairs
    do: [ :pair | 
      | wc packageInfo |
      wc := mcTool resolveWorkingCopyReference: (pair at: 1).
      self
        gsfileout: directoryPath
        workingCopy: wc
        filename: (pair at: 2)
        defaultHeader: defaultHeader ].
  ^ packageFilenamePairs