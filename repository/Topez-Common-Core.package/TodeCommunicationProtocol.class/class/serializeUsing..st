initialization
serializeUsing: protocolSignatureArray
  | new |
  self checkCompatibilityWith: protocolSignatureArray.
  new := (protocolSignatureArray at: 2) = '0.5.1'
    ifTrue: [ TodeSTON051Protocol new ]
    ifFalse: [ TodeSTON091Protocol new ].
  ^ new