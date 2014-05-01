as yet unclassified
testComment02
  "run without errors ... to keep me honest"

  | node |
  node := self createClassRefNode.
  self
    evaluateCommandString: 'cls --help comment';
    evaluateCommandString: 'cls comment ' , self mockClassName;
    evaluateCommandString:
        'cls comment TDShellClsCommandTests ' , self mockClassName;
    evaluateCommandString: 'cls comment @' , node printString;
    yourself