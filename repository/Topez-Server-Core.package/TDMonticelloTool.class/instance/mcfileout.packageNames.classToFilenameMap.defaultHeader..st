as yet unclassified
mcfileout: directoryPath packageNames: packageNames classToFilenameMap: classToFilenameMap defaultHeader: defaultHeader
  | gsTool |
  gsTool := self topez toolInstanceFor: 'gs'.
  packageNames
    do: [ :packageName | 
      | wc classes classnameFilenamePairs packageInfo methods externalMethodMap |
      wc := self resolveWorkingCopyReference: packageName.
      packageInfo := MetacelloPlatform current packageInfoFor: wc.
      classes := packageInfo classes.
      classnameFilenamePairs := classes
        collect: [ :cls | 
          | clsname |
          clsname := cls name asString.
          {clsname.
          (clsname asLowercase , '.gs')} ].
      gsTool
        gsfileout: directoryPath
        classnameFilenamePairs: classnameFilenamePairs
        defaultHeader: defaultHeader.
      methods := packageInfo extensionMethods.
      externalMethodMap := Dictionary new.
      methods
        do: [ :meth | 
          | set |
          set := externalMethodMap
            at: meth actualClass theNonMetaClass name
            ifAbsent: [ externalMethodMap at: meth actualClass name put: Set new ].
          set add: meth ].
      gsTool
        gsfileout: directoryPath
        externalMethodMap: externalMethodMap
        classToFilenameMap: classToFilenameMap
        defaultHeader: defaultHeader ].
  ^ packageNames