accessing
packageTextList
  | packageNames packagesSpec loadedVersions resolvedReferences |
  packagesSpec := self packagesSpec.
  packageNames := packagesSpec at: 1.
  loadedVersions := packagesSpec at: 2.
  resolvedReferences := packagesSpec at: 3.
  ^ packageNames
    collect: [ :packageName | 
      | attributes packageNameString |
      packageNameString := packageName.
      attributes := {(TextEmphasis normal)}.
      loadedVersions
        at: packageName
        ifPresent: [ :versionReference | 
          packageNameString := packageName , ' (' , versionReference name , ')'.
          attributes add: TextEmphasis underlined.
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
                    ifTrue: [ attributes add: TextEmphasis bold ] ] ] ].
      Text string: packageNameString attributes: attributes ]