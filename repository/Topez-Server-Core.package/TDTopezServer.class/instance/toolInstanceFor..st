convenience
toolInstanceFor: aCommandName
  | commandNode |
  commandNode := self commands
    at: aCommandName
    ifAbsent: [ 
      TodeCommandError
        signal: 'Command ' , aCommandName printString , ' does not exist' ].
  ^ commandNode blockVendor topez: self objIn: objIn value todeCommand: nil