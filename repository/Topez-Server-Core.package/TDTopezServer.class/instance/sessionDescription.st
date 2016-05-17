client forwarder
sessionDescription
  sessionDescription
    ifNil: [ 
      | ans |
      ans := self topezClientForwarder perform: #'getSessionDescription'.
      sessionDescription := self objectSerializer fromString: ans ].
  ^ sessionDescription