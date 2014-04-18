as yet unclassified
testBrowseMethod
  "run without errors ... to keep me honest"

  | node defList |
  node := self createSelectBlockNode.
  self topez
    evaluateCommandString: 'browse method at:put: nextPutAll:';
    evaluateCommandString:
        'browse method --spec Dictionary>>at:put: `Dictionary class>>new:`';
    evaluateCommandString: 'browse method --regex at\:put\:|nextPutAll\:';
    evaluateCommandString: 'browse method -r at\:put\:|nextPutAll\:';
    evaluateCommandString:
        'browse method --filter=@' , node printString , ' at:put: ';
    evaluateCommandString: 'browse method --filter=`[:def | true ]` at:put: ';
    yourself.
  defList := self topez
    evaluateCommandString: 'browse method --filter=`[:def | true ]` at:put: '.
  self deny: defList isEmpty.
  defList := self topez
    evaluateCommandString: 'browse method --filter=`[:def | false ]` at:put: '.
  self assert: defList isEmpty