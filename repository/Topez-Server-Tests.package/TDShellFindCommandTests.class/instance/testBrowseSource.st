as yet unclassified
testBrowseSource
  | node defs |
  node := self createSenderNode.
  self
    evaluateCommandString: 'browse --help source';
    evaluateCommandString: 'browse source --exact `Hello World`';
    evaluateCommandString: 'browse source `hello world`';
    evaluateCommandString: 'browse source --exact --noCase `hello world`';
    evaluateCommandString: 'browse source --case `Hello World`';
    yourself.
  defs := self
    evaluateCommandString:
      'browse --scriptPath=' , node printString , ' source `| d |`'.
  self deny: defs isEmpty