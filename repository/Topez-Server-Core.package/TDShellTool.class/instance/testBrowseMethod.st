as yet unclassified
testBrowseMethod
  "run without errors ... to keep me honest"

  | node |
  node := self createFilterBlockNode.
  self topez
    evaluateCommandString: 'browse method at:put: nextPutAll:';
    evaluateCommandString:
        'browse method --spec Dictionary>>at:put: `Dictionary class>>new:`';
    evaluateCommandString: 'browse method --regex at\:put\:|nextPutAll\:';
    evaluateCommandString: 'browse method -r at\:put\:|nextPutAll\:';
    evaluateCommandString:
        'browse method --filter=' , node printString , ' at:put: ';
    yourself