as yet unclassified
mcDiffForWorkingCopy: workingCopy and: versionInfo on: stream
  | patch |
  patch := self patchForWorkingCopy: workingCopy and: versionInfo.
  patch isEmpty
    ifTrue: [ ^ patch ].
  stream
    nextPutAll:
        ('==================== ' , workingCopy packageName , ' vs ' , versionInfo name
            , ' ====================') asText allBold;
    cr.
  self diffPatch: patch on: stream.
  stream cr.
  ^ patch