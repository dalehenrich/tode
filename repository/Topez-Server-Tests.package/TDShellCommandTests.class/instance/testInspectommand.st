as yet unclassified
testInspectommand
  "run without errors ... to keep me honest"

  | node |
  node := self createSenderNode.
  self
    evaluateCommandString: 'inspect --help ';
    evaluateCommandString: 'inspect ' , node printString;
    evaluateCommandString: 'eval `Object`; inspect';
    yourself