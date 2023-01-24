*tode-gemstone-core3x
gssslLog
  "
  gs sslLog
"

  | log |
  self getSubcommandOptsMixedLongShort: {}.
  log := #().
  Smalltalk
    at: #'GsSecureSocket'
    ifPresent: [ :cls | log := cls fetchErrorStringArray ].
  log inspect