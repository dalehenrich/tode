client forwarder
resetAllGlobalNames
  "cause SHOUT globalNames cache to be reset"

  self topezClientForwarder
    ifNotNil: [ :forwarder | forwarder resetAllGlobalNames ]