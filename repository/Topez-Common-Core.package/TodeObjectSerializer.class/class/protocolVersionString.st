signatures
protocolVersionString
  "utf8 encoding done in toString: fromString:"

  "No character encoding done"

  "If hex encoded characters encountered, assume that the string itself is utf8 encoded (i,e., support reading of 0.5.1 strings"

  true
    ifTrue: [ 
      "wire out '0.9.1 for the time being ... need to work on parameterizeable STON"
      ^ self defaultProtocolVersionString ].
  ^ '0.9.1'