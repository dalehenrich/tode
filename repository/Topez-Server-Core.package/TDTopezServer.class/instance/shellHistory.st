client forwarder
shellHistory
  | historySton |
  historySton := self topezClientForwarder shellHistory.
  ^ self objectSerializer fromString: historySton