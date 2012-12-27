as yet unclassified
compareChangesFor: anMCWorkingCopy on: stream
  | diffy package snapshot info ancestorSnapshot |
  anMCWorkingCopy modified
    ifFalse: [ 
      stream
        nextPutAll: '... no changes';
        cr.
      ^ self ].
  diffy := MCDiffyTextWriter on: stream.
  package := anMCWorkingCopy package.
  snapshot := package snapshot.
  info := anMCWorkingCopy ancestors first.
  ancestorSnapshot := anMCWorkingCopy findSnapshotWithVersionInfo: info.
  diffy writePatch: (snapshot patchRelativeToBase: ancestorSnapshot)