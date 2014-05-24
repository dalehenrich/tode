as yet unclassified
testBrowseSource
  | node defs |
  node := self createSenderNode.
  self
    evaluateCommandString: 'browse --help source';
    evaluateCommandString: 'browse source --exact `hello world`';
    evaluateCommandString: 'browse source `hello world`';
    yourself.
  defs := self
    evaluateCommandString:
      'browse --scriptPath=' , node printString , ' source `| d |`'.
  self deny: defs isEmpty