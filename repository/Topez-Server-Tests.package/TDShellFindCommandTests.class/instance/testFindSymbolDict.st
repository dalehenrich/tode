as yet unclassified
testFindSymbolDict
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'find --help symbolDict';
    evaluateCommandString: 'find symbolDict --user=SystemUser UserGlobals';
    evaluateCommandString:
        'find --select=`[:def | ''Tool'' asRegex search: def label ]` symbolDict UserGlobals';
    evaluateCommandString: 'find symbolDict --user=SystemUser';
    yourself.
  [ 
  self
    evaluateCommandString: 'find symbolDict --list --user=SystemUser';
    evaluateCommandString: 'find symbolDict --list ';
    evaluateCommandString:
        'find --select=`[:dict | (''Global'' asRegex search: dict name asString) ]` symbolDict --list ';
    evaluateCommandString: 'find symbolDict --globals --user=SystemUser Globals';
    evaluateCommandString:
        'find --select=`[:assoc | assoc value isString ]` symbolDict --globals --user=SystemUser Globals';
    yourself ]
    on: GsInteractionRequest
    do: [ :ir | 
      "inspecting results ... don't bring up a window during tests"
      ir resume ]