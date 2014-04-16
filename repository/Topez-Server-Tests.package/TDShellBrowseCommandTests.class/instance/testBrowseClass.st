as yet unclassified
testBrowseClass
  "run without errors ... to keep me honest"

  self topez
    evaluateCommandString: 'browse class method stream';
    evaluateCommandString: 'browse class --exact GsNMethod';
    evaluateCommandString: 'browse class --hier --exact GsNMethod';
    evaluateCommandString: 'browse class --hier method|stream';
    evaluateCommandString: 'browse class --full GsNMethod';
    evaluateCommandString:
        'browse class --user=SystemUser --symbolDict UserGlobals';
    evaluateCommandString:
        'browse class --hier --user=SystemUser --symbolDict UserGlobals';
    evaluateCommandString: 'browse class --category topez-server tode';
    evaluateCommandString: 'browse class --hier --category topez-server tode';
    evaluateCommandString: 'browse class --category --exact Topez-Server-Core';
    evaluateCommandString:
        'browse class --hier --category --exact Topez-Server-Core';
    yourself