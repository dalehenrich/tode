as yet unclassified
testBrowseSender
  "run without errors ... to keep me honest"

  | node defs |
  node := self createSenderNode.
  false
    ifTrue: [ 
      self topez
        evaluateCommandString: 'browse sender at:put:';
        evaluateCommandString: 'browse sender --pure at:put:';
        evaluateCommandString: 'browse sender --regex at\:put\:';
        yourself ].
  defs := self topez
    evaluateCommandString:
      'browse --scriptPath=' , node printString , ' sender at:put:'.
  self deny: defs isEmpty