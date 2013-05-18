as yet unclassified
mmDiffForWorkingCopy: workingCopy on: stream
  | patch |
  stream
    nextPutAll:
        ('==================== ' , workingCopy packageName , ' ====================')
            asText allBold;
    cr.
  patch := self patchForWorkingCopy: workingCopy.
  self diffPatch: patch forWorkingCopy: workingCopy on: stream.
  stream cr.
  ^ patch