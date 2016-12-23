accessing
createForResponseArray: topezServer transcriptClientForwarderOop: transcriptClientForwarderOop topezClientClientForwarder: topezClientClientForwarder
  ^ {(topezServer asOop).
  transcriptClientForwarderOop.
  (Reflection oopOf: topezClientClientForwarder).
  (TodeObjectSerializer protocolSignatureArray).
  (self todeServerAPIVersionString)}