client forwarder
deleteWindowAt: aWindowId
  "close the window with <aWindowId>"

  self topezClientForwarder
    ifNotNil: [ :forwarder | forwarder deleteWindowAt: aWindowId ]