as yet unclassified
testBrowseClass
  "run without errors ... to keep me honest"

  self topez
    evaluateCommandString: 'browse --help class';
    evaluateCommandString: 'browse class method stream';
    evaluateCommandString: 'browse class --exact GsNMethod';
    evaluateCommandString: 'browse class --hier --exact GsNMethod';
    evaluateCommandString: 'browse class --hier method|stream';
    evaluateCommandString:
        'browse --select=`[:def | (''^OB'' asRegex search: def label) not ]` class --hier method|stream';
    evaluateCommandString: 'browse class --full GsNMethod';
    yourself