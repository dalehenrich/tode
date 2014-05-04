as yet unclassified
testDsCommand
  "run without errors ... to keep me honest"

  | node |
  self
    evaluateCommandString: 'ds --help ';
    evaluateCommandString: 'ds';
    yourself.
  node := self createSenderNode.
  self
    evaluateCommandString: 'ds --level=2 ' , node printString;
    yourself