diff
patchForWorkingCopy: anMCWorkingCopy
  anMCWorkingCopy ancestors size = 0
    ifTrue: [ 
      | package snapshot |
      package := anMCWorkingCopy package.
      snapshot := package snapshot.
      ^ snapshot patchRelativeToBase: MCSnapshot empty ].
  ^ self
    patchForWorkingCopy: anMCWorkingCopy
    and: anMCWorkingCopy ancestors first