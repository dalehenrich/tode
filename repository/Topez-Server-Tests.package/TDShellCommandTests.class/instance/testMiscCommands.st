as yet unclassified
testMiscCommands
  "run without errors ... to keep me honest"

  | node |
  self
    evaluateCommandString: 'abort --help ';
    evaluateCommandString: 'abort';
    evaluateCommandString: 'cd --help ';
    evaluateCommandString: 'cd';
    evaluateCommandString: 'commit --help ';
    evaluateCommandString: 'commit';
    yourself.
  node := self createSenderNode.
  self
    evaluateCommandString: 'cat --help ';
    evaluateCommandString: 'cat ' , node printString;
    yourself