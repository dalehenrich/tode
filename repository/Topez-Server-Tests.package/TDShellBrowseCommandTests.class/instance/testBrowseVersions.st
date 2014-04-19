as yet unclassified
testBrowseVersions
  "run without errors ... to keep me honest"

  self topez
    evaluateCommandString: 'browse --help versions';
    evaluateCommandString: 'browse versions `Dictionary class>>new:`';
    yourself