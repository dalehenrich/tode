as yet unclassified
testFindConfigurations
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'find --help configurations';
    evaluateCommandString: 'find configurations';
    yourself