as yet unclassified
testDefinition02
  "run without errors ... to keep me honest"

  | node |
  node := self createClassRefNode.
  self topez
    evaluateCommandString: 'cls --help definition';
    evaluateCommandString: 'cls definition ' , self mockClassName;
    evaluateCommandString:
        'cls definition TDShellClsCommandTests ' , self mockClassName;
    evaluateCommandString:
        'cls definition @' , node printString , ' ' , self mockClassName;
    evaluateCommandString:
        'cls definition ' , self mockClassName , ' @' , node printString;
    yourself