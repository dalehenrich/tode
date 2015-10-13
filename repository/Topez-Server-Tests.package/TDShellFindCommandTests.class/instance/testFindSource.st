as yet unclassified
testFindSource
  | node defs |
  node := self createSenderNode.
  self
    evaluateCommandString: 'find --help source';
    evaluateCommandString: 'find source --exact `Hello World`';
    evaluateCommandString: 'find source `hello world`';
    evaluateCommandString: 'find source --exact --noCase `hello world`';
    evaluateCommandString: 'find source --case `Hello World`';
    yourself.
  defs := self
    evaluateCommandString:
      'find --scriptPath=' , node printString , ' source `| d |`'.
  self deny: defs isEmpty