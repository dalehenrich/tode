accessing
loginFrom: aShellId
  | topezServer transcriptClientForwarder topezClientClientForwarder resultArray |
  topezServer := self for: aShellId.
  transcriptClientForwarder := ClientForwarder new.
  topezClientClientForwarder := ClientForwarder new.
  Smalltalk at: #'TranscriptProxy' ifPresent: [ :cl | cl registerTranscriptClientForwarder: transcriptClientForwarder ].
  topezServer topezClientForwarder: topezClientClientForwarder.
  resultArray := {(topezServer asOop).
  (transcriptClientForwarder asOop).
  (topezClientClientForwarder asOop)}.
  ^ STON toString: resultArray