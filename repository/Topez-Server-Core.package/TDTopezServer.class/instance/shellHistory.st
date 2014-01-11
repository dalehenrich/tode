client forwarder
shellHistory
  | historySton |
  historySton := self topezClientForwarder shellHistory.
  ^ STON fromString: historySton