as yet unclassified
testBrowseSender
  "run without errors ... to keep me honest"

  | node defs |
  node := self createSenderNode.
  self topez
    evaluateCommandString: 'browse --help sender';
    evaluateCommandString: 'browse sender at:put:';
    evaluateCommandString: 'browse sender --pure at:put:';
    evaluateCommandString: 'browse --staticList sender --regex at\:put\:';
    yourself.
  defs := self topez
    evaluateCommandString:
      'browse --scriptPath=' , node printString , ' sender at:put:'.
  self deny: defs isEmpty