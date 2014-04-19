as yet unclassified
testBrowseProject
  "run without errors ... to keep me honest"

  self topez
    evaluateCommandString: 'browse --help project';
    evaluateCommandString: 'browse project tode rb';
    evaluateCommandString: 'browse project --exact Tode';
    yourself