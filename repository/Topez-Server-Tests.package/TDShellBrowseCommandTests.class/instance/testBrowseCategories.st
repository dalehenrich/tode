as yet unclassified
testBrowseCategories
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'browse --help categories';
    evaluateCommandString: 'browse categories';
    yourself