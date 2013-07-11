as yet unclassified
mmDiffForWorkingCopy: workingCopy on: stream
  | patch |
  patch := self patchForWorkingCopy: workingCopy.
  patch isEmpty
    ifTrue: [ ^ patch ].
  stream
    nextPutAll:
        ('==================== ' , workingCopy packageName , ' ====================')
            asText allBold;
    cr.
  self diffPatch: patch forWorkingCopy: workingCopy on: stream.
  stream cr.
  ^ patch