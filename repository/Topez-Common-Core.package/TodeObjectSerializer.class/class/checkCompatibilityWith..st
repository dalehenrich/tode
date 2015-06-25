testing
checkCompatibilityWith: protocolSignatureArray
  | protocol protocolVersion |
  protocol := protocolSignatureArray at: 1.
  protocolVersion := (protocolSignatureArray at: 2) asMetacelloVersionNumber.
  protocol = self protocol
    ifFalse: [ 
      self
        error:
          'Unexpected transport protocol: ' , protocol printString , ' expected '
            , self protocol printString ].
  (protocolVersion ~> self protocolVersion
    or: [ protocolVersion = self defaultProtocolVersion ])
    ifFalse: [ 
      self
        error:
          'Unexpected STON version: ' , protocolVersion printString , ' expected '
            , self protocolVersion printString ]