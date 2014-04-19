as yet unclassified
testBrowseSource
  | node defs |
  node := self createSenderNode.
  self topez
    evaluateCommandString: 'browse --help source';
    evaluateCommandString: 'browse source --exact `hello world`';
    evaluateCommandString: 'browse source `hello world`';
    yourself.
  defs := self topez
    evaluateCommandString:
      'browse --scriptPath=' , node printString , ' source `| d |`'.
  self deny: defs isEmpty