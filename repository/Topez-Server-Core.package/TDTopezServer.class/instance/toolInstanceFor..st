as yet unclassified
toolInstanceFor: aCommandName
  | commandNode |
  commandNode := self commands
    at: aCommandName
    ifAbsent: [ self error: 'Command ' , aCommandName printString , ' does not exist' ].
  ^ commandNode blockVendor topez: self objIn: objIn value todeCommand: nil