as yet unclassified
testFindMethod
  "run without errors ... to keep me honest"

  | node defList |
  node := self createSelectBlockNode.
  self
    evaluateCommandString: 'find --help method';
    evaluateCommandString: 'find method at:put: nextPutAll:';
    evaluateCommandString:
        'find method --spec Dictionary>>at:put: `Dictionary class>>new:`';
    evaluateCommandString: 'find method --regex at\:put\:|nextPutAll\:';
    evaluateCommandString: 'find method -r at\:put\:|nextPutAll\:';
    evaluateCommandString:
        'find --select=@' , node printString , ' method  at:put: ';
    yourself.
  defList := self
    evaluateCommandString: 'find --select=`[:def | true ]` method at:put: '.
  self deny: defList isEmpty.
  defList := self
    evaluateCommandString: 'find --select=`[:def | false ]` method at:put: '.
  self assert: defList isEmpty