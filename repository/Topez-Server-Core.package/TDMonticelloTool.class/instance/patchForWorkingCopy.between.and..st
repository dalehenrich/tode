as yet unclassified
patchForWorkingCopy: anMCWorkingCopy between: versionInfo1 and: versionInfo2
  | snapshot ancestorSnapshot |
  snapshot := anMCWorkingCopy findSnapshotWithVersionInfo: versionInfo1.
  ancestorSnapshot := anMCWorkingCopy findSnapshotWithVersionInfo: versionInfo2.
  ^ snapshot patchRelativeToBase: ancestorSnapshot