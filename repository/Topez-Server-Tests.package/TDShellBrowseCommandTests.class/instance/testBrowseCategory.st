as yet unclassified
testBrowseCategory
  "run without errors ... to keep me honest"

  | node |
  node := self createSelectBlockNode.
  self topez
    evaluateCommandString: 'browse category topez-server tode';
    evaluateCommandString: 'browse category --exact Topez-Server-Core';
    evaluateCommandString: 'browse category --hier --exact Topez-Server-Core';
    evaluateCommandString:
        'browse --select=@' , node printString , ' category tode ';
    evaluateCommandString:
        'browse --select=`[:def | ''Tool'' asRegex search: def label ]` category tode';
    yourself