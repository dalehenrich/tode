client forwarder
sessionDescription
  sessionDescription
    ifNil: [ 
      | ans |
      ans := self topezClientForwarder getSessionDescription.
      sessionDescription := self objectSerializer fromString: ans ].
  ^ sessionDescription