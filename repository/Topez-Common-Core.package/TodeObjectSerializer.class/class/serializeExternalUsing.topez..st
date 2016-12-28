instance creation
serializeExternalUsing: protocolSignatureArray topez: aTDTopezServer
  self checkCompatibilityWith: protocolSignatureArray.
  (protocolSignatureArray at: 2) = '0.5.1'
    ifTrue: [ self error: 'external serializer not supported' ].
  ^ TodeSTON091ExternalSerializer new
    topez: aTDTopezServer;
    yourself