as yet unclassified
testBrowsePackage
  "run without errors ... to keep me honest"

  self topez
    evaluateCommandString: 'browse package topez-server tode';
    evaluateCommandString: 'browse package --exact Topez-Server-Core';
    yourself