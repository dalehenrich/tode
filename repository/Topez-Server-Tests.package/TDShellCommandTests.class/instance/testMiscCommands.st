as yet unclassified
testMiscCommands
  "run without errors ... to keep me honest"

  | node |
  self topez
    evaluateCommandString: 'abort --help ';
    evaluateCommandString: 'abort';
    evaluateCommandString: 'cd --help ';
    evaluateCommandString: 'cd';
    yourself.
  node := self createSenderNode.
  self topez
    evaluateCommandString: 'cat --help ';
    evaluateCommandString: 'cat ' , node printString;
    yourself