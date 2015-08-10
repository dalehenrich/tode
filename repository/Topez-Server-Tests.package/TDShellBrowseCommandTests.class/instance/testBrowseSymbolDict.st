as yet unclassified
testBrowseSymbolDict
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'browse --help symbolDict';
    evaluateCommandString: 'browse symbolDict --user=SystemUser UserGlobals';
    evaluateCommandString:
        'browse symbolDict --hier --user=SystemUser UserGlobals';
    evaluateCommandString:
        'browse --select=`[:def | ''Tool'' asRegex search: def label ]` symbolDict UserGlobals';
    evaluateCommandString: 'browse symbolDict --user=SystemUser';
    evaluateCommandString: 'browse symbolDict --hier --user=SystemUser';
    yourself.
  [ 
  self
    evaluateCommandString: 'browse symbolDict --list --user=SystemUser';
    evaluateCommandString: 'browse symbolDict --list ';
    evaluateCommandString:
        'browse --select=`[:dict | (''Global'' asRegex search: dict name asString) ]` symbolDict --list ';
    evaluateCommandString:
        'browse symbolDict --globals --user=SystemUser Globals';
    evaluateCommandString:
        'browse --select=`[:assoc | assoc value isString ]` symbolDict --globals --user=SystemUser Globals';
    yourself ]
    on: GsInteractionRequest
    do: [ :ir | 
      "inspecting results ... don't bring up a window during tests"
      ir resume ]