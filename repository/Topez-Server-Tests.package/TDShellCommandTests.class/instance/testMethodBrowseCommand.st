as yet unclassified
testMethodBrowseCommand
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'method --help ';
    evaluateCommandString: 'method --help browse';
    evaluateCommandString:
        'method browse Dictionary>>at:put: `Dictionary class>>new:`';
    yourself