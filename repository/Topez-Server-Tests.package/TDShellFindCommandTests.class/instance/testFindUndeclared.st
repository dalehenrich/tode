as yet unclassified
testFindUndeclared
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'find --help undeclared';
    evaluateCommandString: 'find undeclared';
    yourself