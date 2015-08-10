as yet unclassified
testFindSymbolDict
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'find --help symbolDict';
    evaluateCommandString: 'find symbolDict --user=SystemUser UserGlobals';
    evaluateCommandString: 'find symbolDict --user=SystemUser';
    evaluateCommandString:
        'find symbolDict --hier --user=SystemUser UserGlobals';
    evaluateCommandString: 'find symbolDict --hier --user=SystemUser';
    yourself