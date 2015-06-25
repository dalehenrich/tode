client forwarder
shellHistory
  | historySton |
  historySton := self topezClientForwarder shellHistory.
  ^ STON fromUTF8EncodedString: historySton