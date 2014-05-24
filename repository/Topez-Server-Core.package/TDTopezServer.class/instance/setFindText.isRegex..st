client forwarder
setFindText: messagePattern isRegex: messagePatternIsRegex
  ^ self topezClientForwarder
    setFindText: messagePattern
    isRegex: messagePatternIsRegex