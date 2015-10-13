as yet unclassified
testFindVersions
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'find --help versions';
    evaluateCommandString: 'find versions `Dictionary class>>new:`';
    yourself