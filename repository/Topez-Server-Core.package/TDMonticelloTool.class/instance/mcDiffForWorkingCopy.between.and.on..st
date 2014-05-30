as yet unclassified
mcDiffForWorkingCopy: workingCopy between: versionInfo1 and: versionInfo2 on: stream
  | patch |
  patch := self
    patchForWorkingCopy: workingCopy
    between: versionInfo1
    and: versionInfo2.
  patch isEmpty
    ifTrue: [ ^ patch ].
  stream
    nextPutAll:
        ('==================== ' , versionInfo2 name , ' (-) -->' , versionInfo1 name
            , ' (+) ====================') asText allBold;
    cr.
  self diffPatch: patch on: stream.
  stream cr.
  ^ patch