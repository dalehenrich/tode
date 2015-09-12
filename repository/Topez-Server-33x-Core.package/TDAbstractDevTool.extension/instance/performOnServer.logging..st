*topez-server-33x-core
performOnServer: command logging: logging
  | result |
  result := System performOnServer: command.
  logging
    ifTrue: [ 
      Transcript
        cr;
        show: command printString;
        cr;
        show: result ].
  ^ result