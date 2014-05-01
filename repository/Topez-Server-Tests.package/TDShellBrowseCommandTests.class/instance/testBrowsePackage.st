as yet unclassified
testBrowsePackage
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'browse --help package';
    evaluateCommandString: 'browse package topez-server tode';
    evaluateCommandString: 'browse package --exact Topez-Server-Core';
    yourself