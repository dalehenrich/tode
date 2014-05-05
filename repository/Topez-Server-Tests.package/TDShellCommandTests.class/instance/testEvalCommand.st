as yet unclassified
testEvalCommand
  "run without errors ... to keep me honest"

  | node |
  self
    evaluateCommandString: 'eval --help ';
    evaluateCommandString: 'eval `3+4`';
    yourself.
  node := self createSenderNode.
  self
    evaluateCommandString: node printString , '; eval `self printString`';
    yourself