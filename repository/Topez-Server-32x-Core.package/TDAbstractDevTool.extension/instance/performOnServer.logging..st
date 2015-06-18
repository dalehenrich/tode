*topez-server-32x-core
performOnServer: command logging: logging
  | result |
  result := (System performOnServer: command) asUnicodeString.
  logging
    ifTrue: [ 
      Transcript
        cr;
        show: command printString;
        cr;
        show: result ].
  ^ result
