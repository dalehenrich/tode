as yet unclassified
testBrowseUndeclared
  "run without errors ... to keep me honest"

  self topez
    evaluateCommandString: 'browse --help undeclared';
    evaluateCommandString: 'browse undeclared';
    yourself