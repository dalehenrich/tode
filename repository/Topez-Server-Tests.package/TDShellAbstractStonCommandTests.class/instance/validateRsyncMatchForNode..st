validation
validateRsyncMatchForNode: sourceNode
  | destNode rsync |
  rsync := TDSTONRsync new.
  self assert: (sourceNode rsyncMatches: sourceNode with: rsync).
  destNode := sourceNode copy.
  sourceNode
    modificationTime:
      (destNode modificationTime - (Duration seconds: 5)) beRounded.
  self deny: (sourceNode rsyncMatches: destNode with: rsync).
  rsync setOption: 'modify-window' value: 6.
  self assert: (sourceNode rsyncMatches: destNode with: rsync)