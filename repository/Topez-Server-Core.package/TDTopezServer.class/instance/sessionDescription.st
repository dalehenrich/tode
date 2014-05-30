client forwarder
sessionDescription
  sessionDescription
    ifNil: [ 
      | ans |
      ans := self topezClientForwarder getSessionDescription.
      sessionDescription := STON fromString: ans ].
  ^ sessionDescription