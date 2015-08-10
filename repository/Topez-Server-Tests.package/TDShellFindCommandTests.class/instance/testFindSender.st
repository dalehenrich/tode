as yet unclassified
testFindSender
  "run without errors ... to keep me honest"

  | node defs |
  node := self createSenderNode.
  self
    evaluateCommandString: 'find --help sender';
    evaluateCommandString: 'find sender at:put:';
    evaluateCommandString: 'find sender --pure at:put:';
    yourself.
  defs := self
    evaluateCommandString:
      'find --scriptPath=' , node printString , ' sender at:put:'.
  self deny: defs isEmpty