as yet unclassified
testFindCategory
  "run without errors ... to keep me honest"

  | node |
  node := self createSelectBlockNode.
  self
    evaluateCommandString: 'find --help category';
    evaluateCommandString: 'find category topez-server tode';
    evaluateCommandString: 'find category --exact Topez-Server-Core';
    evaluateCommandString: 'find category --hier --exact Topez-Server-Core';
    yourself