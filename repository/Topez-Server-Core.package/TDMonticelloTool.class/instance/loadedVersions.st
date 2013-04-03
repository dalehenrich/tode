as yet unclassified
loadedVersions
  | loadedVersions |
  loadedVersions := Dictionary new.
  MCWorkingCopy allManagers
    collect: [ :wc | 
      wc ancestry ancestors isEmpty not
        ifTrue: [ 
          | reference |
          reference := GoferVersionReference
            name: wc ancestry ancestors first name.
          loadedVersions
            at: (wc metacelloPackageNameWithBranch at: 2)
            put: reference ] ].
  ^ loadedVersions