as yet unclassified
testManCommand
  "run without errors ... to keep me honest"

  self topez
    evaluateCommandString: 'man --help ';
    evaluateCommandString: 'browse --all';
    evaluateCommandString: 'man browse';
    evaluateCommandString: 'man browse class';
    evaluateCommandString: 'man --find --exact browse class';
    evaluateCommandString: 'man --find browse|class';
    yourself