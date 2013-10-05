as yet unclassified
mcfileout: directoryPath packageNames: packageNames defaultHeader: defaultHeader
  ^ self
    mcfileout: directoryPath
    packageNames: packageNames
    classToFilenameMap: Dictionary new
    defaultHeader: defaultHeader