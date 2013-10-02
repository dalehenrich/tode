as yet unclassified
mcfileout: directoryPath packageNames: packageNames definitionsFilename: definitionFilename methodsFilename: methodsFilename classToFilenameMap: classToFilenameMap defaultHeader: defaultHeader
  | gsTool classes classDefs classNameList |
  gsTool := self topez toolInstanceFor: 'gs'.
  classes := #().
  packageNames
    do: [ :packageName | 
      | wc packageInfo methods externalMethodMap |
      wc := self resolveWorkingCopyReference: packageName.
      packageInfo := MetacelloPlatform current packageInfoFor: wc.
      classes := classes , packageInfo classes.
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
  classDefs := classes collect: [ :cls | TDClassDefinition className: cls name ].
  classDefs := TDClassDefinition classHierarchyOrder: classDefs.
  classNameList := classDefs collect: [ :def | def className ].
  gsTool
    gsfileout: directoryPath
    classDefs: classNameList
    filename: definitionFilename
    defaultHeader: defaultHeader.
  classNameList := classNameList sort: [ :a :b | a <= b ].
  gsTool
    gsfileout: directoryPath
    classMethods: classNameList
    filename: methodsFilename
    defaultHeader: defaultHeader.
  ^ packageNames