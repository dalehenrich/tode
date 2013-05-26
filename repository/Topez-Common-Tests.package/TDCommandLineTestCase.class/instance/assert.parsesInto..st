as yet unclassified
assert: commandLine parsesInto: expectedCommands
  ^ self assert: commandLine shouldParse: true into: expectedCommands