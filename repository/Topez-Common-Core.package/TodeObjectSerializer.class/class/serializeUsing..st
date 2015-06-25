initialization
serializeUsing: protocolSignatureArray
  | new |
  self checkCompatibilityWith: protocolSignatureArray.
  new := (protocolSignatureArray at: 2) = '0.5.1'
    ifTrue: [ TodeSTON051ObjectSerializer new ]
    ifFalse: [ TodeSTON091Serializer new ].
  ^ new