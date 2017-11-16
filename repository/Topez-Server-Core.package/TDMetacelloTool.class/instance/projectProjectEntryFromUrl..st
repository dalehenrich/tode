project api
projectProjectEntryFromUrl: projectEntryUrl
  | response client entryNodeSource node url |
  url := projectEntryUrl asZnUrl.
  url scheme = #'https'
    ifTrue: [ 
      Smalltalk
        at: #'GsSecureSocket'
        ifPresent: [ :class | class perform: #'disableCertificateVerificationOnClient' ] ].
  client := ZnClient new.
  response := client
    beOneShot;
    enforceHttpSuccess: true;
    get: url.
  entryNodeSource := response decodeFromUTF8.
  node := self objectSerializer fromString: entryNodeSource.
  ^ node