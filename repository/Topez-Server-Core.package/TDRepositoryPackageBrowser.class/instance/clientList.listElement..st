tools
clientList: miniTool listElement: listElement
  | packageNames packagesSpec loadedVersions resolvedReferences packageNameString |
  theMiniTool := miniTool.
  packagesSpec := self packagesSpec.
  packageNames := packagesSpec at: 1.
  loadedVersions := packagesSpec at: 2.
  resolvedReferences := packagesSpec at: 3.
  ^ packageNames
    collect: [ :packageName | 
      | attributes loadedVersionName laterVersionName |
      packageNameString := packageName.
      attributes := {(TextEmphasis normal)}.
      loadedVersionName := ''.
      laterVersionName := ''.
      loadedVersions
        at: packageName
        ifPresent: [ :versionReference | 
          attributes add: TextEmphasis underlined.
          loadedVersionName := ' (' , versionReference author , '.'
            , versionReference versionNumber asString , ')'.
          resolvedReferences
            at: versionReference packageName
            ifPresent: [ :sortedVersions | 
              | newest sameBranch |
              sameBranch := sortedVersions
                select: [ :version | version branch = versionReference branch ].
              sameBranch isEmpty
                ifFalse: [ 
                  newest := sameBranch first.
                  newest versionNumber > versionReference versionNumber
                    ifTrue: [ 
                      laterVersionName := ' << (' , newest author , '.'
                        , newest versionNumber asString , ')'.
                      attributes add: TextEmphasis bold ] ] ].
          packageNameString := packageName , loadedVersionName
            , laterVersionName ]
        ifAbsent: [ 
          resolvedReferences
            at: packageName
            ifPresent: [ :sortedVersions | 
              | newest |
              newest := sortedVersions first.
              loadedVersionName := ' (' , newest author , '.'
                , newest versionNumber asString , ')'.
              packageNameString := newest name ] ].
      Text string: packageNameString attributes: attributes ]