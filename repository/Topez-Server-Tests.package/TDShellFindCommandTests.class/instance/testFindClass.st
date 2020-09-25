as yet unclassified
testFindClass
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'find --help class';
    evaluateCommandString: 'find class method stream';
    evaluateCommandString: 'find class --exact GsNMethod';
    evaluateCommandString: 'find class --hier --exact GsNMethod';
    evaluateCommandString: 'find class --hier method|stream';
    evaluateCommandString:
        'find --select=`[:def | (''^OB'' asRegex search: def label) not ]` class --hier method|stream';
    yourself