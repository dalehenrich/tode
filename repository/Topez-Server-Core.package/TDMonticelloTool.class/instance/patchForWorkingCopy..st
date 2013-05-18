as yet unclassified
patchForWorkingCopy: anMCWorkingCopy
  | package snapshot info ancestorSnapshot |
  package := anMCWorkingCopy package.
  snapshot := package snapshot.
  anMCWorkingCopy ancestors size = 0
    ifTrue: [ ^ snapshot patchRelativeToBase: MCSnapshot empty ].
  info := anMCWorkingCopy ancestors first.
  ancestorSnapshot := anMCWorkingCopy findSnapshotWithVersionInfo: info.
  ^ snapshot patchRelativeToBase: ancestorSnapshot