as yet unclassified
testBrowseMethod
  "run without errors ... to keep me honest"

  | node defList |
  node := self createSelectBlockNode.
  self topez
    evaluateCommandString: 'browse --help method';
    evaluateCommandString: 'browse method at:put: nextPutAll:';
    evaluateCommandString:
        'browse method --spec Dictionary>>at:put: `Dictionary class>>new:`';
    evaluateCommandString: 'browse method --regex at\:put\:|nextPutAll\:';
    evaluateCommandString: 'browse method -r at\:put\:|nextPutAll\:';
    evaluateCommandString:
        'browse --select=@' , node printString , ' method  at:put: ';
    yourself.
  defList := self topez
    evaluateCommandString: 'browse --select=`[:def | true ]` method at:put: '.
  self deny: defList isEmpty.
  defList := self topez
    evaluateCommandString: 'browse --select=`[:def | false ]` method at:put: '.
  self assert: defList isEmpty