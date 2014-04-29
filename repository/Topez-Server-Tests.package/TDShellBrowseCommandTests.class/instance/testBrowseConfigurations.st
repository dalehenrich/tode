as yet unclassified
testBrowseConfigurations
  "run without errors ... to keep me honest"

  self topez
    evaluateCommandString: 'browse --help configurations';
    evaluateCommandString: 'browse configurations';
    yourself