as yet unclassified
calculateRemovedFrom: oldVersions versionMap: newVersionMap
  | removed |
  removed := Set new.
  oldVersions
    do: [ :resolved | 
      newVersionMap
        at: (resolved metacelloPackageNameWithBranch at: 2)
        ifAbsent: [ removed add: resolved ] ].
  ^ removed