*tode-gemstone-core3x
performOnServer: commandLine logging: logging
  | result |
  result := self
    performOnServer: commandLine
    status: [ :performOnServerStatusArray | 
      "Array of 5 elements: 
       raw status Integer, 
       child process status Integer (after WEXITSTATUS macro applied), 
       result String (or nil if operation failed) ,
       error string from script file write, fork, or result file read ,
       errno value, a SmallInteger from file write, fork, or file read"
      (performOnServerStatusArray at: 1) ~~ 0
        ifTrue: [ 
          | message |
          message := 'performOnServer: ' , commandLine printString , ' stdout: '
            , (performOnServerStatusArray at: 3) printString
            , ' failed with status: '
            , (performOnServerStatusArray at: 1) printString , ' errno: '
            , (performOnServerStatusArray at: 5) printString , ' errStr: '
            , (performOnServerStatusArray at: 4) asString.
          self error: message ].
      performOnServerStatusArray at: 3 ].
  logging
    ifTrue: [ 
      Transcript
        cr;
        show: commandLine printString;
        cr;
        show: result ].
  ^ result
