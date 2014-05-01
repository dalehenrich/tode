as yet unclassified
testBrowsePackages
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'browse --help packages';
    evaluateCommandString: 'browse packages';
    yourself