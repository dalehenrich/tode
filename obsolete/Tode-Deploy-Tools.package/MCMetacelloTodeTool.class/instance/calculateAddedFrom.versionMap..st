as yet unclassified
calculateAddedFrom: newVersions versionMap: oldVersionMap
  | added |
  added := Set new.
  newVersions
    do: [ :resolved | 
      oldVersionMap
        at: (resolved metacelloPackageNameWithBranch at: 2)
        ifAbsent: [ added add: resolved ] ].
  ^ added