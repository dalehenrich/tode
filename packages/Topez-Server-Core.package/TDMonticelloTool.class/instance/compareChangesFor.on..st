as yet unclassified
compareChangesFor: anMCWorkingCopy on: stream
  | diffy package snapshot |
  anMCWorkingCopy modified
    ifFalse: [ 
      stream
        nextPutAll: '... no changes';
        cr.
      ^ self ].
  diffy := MCDiffyTextWriter on: stream.
  package := anMCWorkingCopy package.
  snapshot := package snapshot.
  anMCWorkingCopy ancestors size = 0
    ifTrue: [ 
      stream
        nextPutAll: '... no version with which to compare (all added)..';
        cr.
      diffy writePatch: (snapshot patchRelativeToBase: MCSnapshot empty) ]
    ifFalse: [ 
      | info ancestorSnapshot |
      info := anMCWorkingCopy ancestors first.
      ancestorSnapshot := anMCWorkingCopy findSnapshotWithVersionInfo: info.
      diffy writePatch: (snapshot patchRelativeToBase: ancestorSnapshot) ]