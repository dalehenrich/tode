as yet unclassified
testFindPackage
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'find --help package';
    evaluateCommandString: 'find package topez-server tode';
    evaluateCommandString: 'find package --exact Topez-Server-Core';
    yourself