client forwarder
sessionDescription
  sessionDescription
    ifNil: [ 
      | ans |
      ans := self topezClientForwarder getSessionDescription.
      sessionDescription := STON fromUTF8EncodedString: ans ].
  ^ sessionDescription