as yet unclassified
loadedVersions: keyedByVersionName
  | loadedVersions |
  loadedVersions := Dictionary new.
  MCWorkingCopy allManagers
    do: [ :wc | 
      wc ancestry ancestors isEmpty not
        ifTrue: [ 
          | reference packageName |
          reference := GoferVersionReference
            name: wc ancestry ancestors first name.
          packageName := keyedByVersionName
            ifTrue: [ wc metacelloPackageNameWithBranch at: 2 ]
            ifFalse: [ wc packageName ].
          loadedVersions at: packageName put: reference ] ].
  ^ loadedVersions