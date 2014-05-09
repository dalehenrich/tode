diff
patchForWorkingCopy: anMCWorkingCopy and: versionInfo
  | package snapshot ancestorSnapshot |
  package := anMCWorkingCopy package.
  snapshot := package snapshot.
  ancestorSnapshot := anMCWorkingCopy findSnapshotWithVersionInfo: versionInfo.
  ^ snapshot patchRelativeToBase: ancestorSnapshot