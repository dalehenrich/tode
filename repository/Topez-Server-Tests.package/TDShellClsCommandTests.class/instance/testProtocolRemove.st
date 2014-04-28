as yet unclassified
testProtocolRemove
  "run without errors ... to keep me honest"

  | x |
  self createMockSubClass.
  self topez evaluateCommandString: 'cls --help protocol'.
  self topez
    evaluateCommandString:
        'cls protocol --add=' , self mockSubClassName , ' sample bubble';
    evaluateCommandString:
        'cls protocol --remove=' , self mockSubClassName , ' sample bubble'.
  self assert: (x := self mockSubClass categoryNames sorted) isEmpty.
  self topez
    evaluateCommandString:
        'cls protocol --class --add=' , self mockSubClassName , ' sample bubble';
    evaluateCommandString:
        'cls protocol --class --remove=' , self mockSubClassName , ' sample bubble'.
  self assert: (x := self mockSubClass class categoryNames sorted) isEmpty