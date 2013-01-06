accessing
createFor: aShellId
  | topezServer transcriptClientForwarder topezClientClientForwarder resultArray |
  topezServer := self for: aShellId.
  transcriptClientForwarder := ClientForwarder new.
  topezClientClientForwarder := ClientForwarder new.
  Smalltalk at: #'TranscriptProxy' ifPresent: [ :cl | cl registerTranscriptClientForwarder: transcriptClientForwarder ].
  topezServer topezClientForwarder: topezClientClientForwarder.
  resultArray := {(topezServer asOop).
  (Reflection oopOf: transcriptClientForwarder).
  (Reflection oopOf: topezClientClientForwarder)}.
  ^ STON toString: resultArray