as yet unclassified
testWsCommand
  "run without errors ... to keep me honest"

  | node |
  self topez
    evaluateCommandString: 'ws --help ';
    evaluateCommandString: 'pwd; ws';
    yourself.
  node := self createClassRefNode.
  self topez
    evaluateCommandString: 'ws @' , node printString;
    yourself