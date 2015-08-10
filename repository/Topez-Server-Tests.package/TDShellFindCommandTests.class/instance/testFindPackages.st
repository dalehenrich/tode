as yet unclassified
testFindPackages
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'find --help packages';
    evaluateCommandString: 'find packages';
    yourself