instance creation
serializeExternalUsing: protocolSignatureArray
  self checkCompatibilityWith: protocolSignatureArray.
  (protocolSignatureArray at: 2) = '0.5.1'
    ifTrue: [ self error: 'external serializer not supported' ].
  ^ TodeSTON091ExternalSerializer new