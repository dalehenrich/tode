as yet unclassified
testManCommand
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'man --help ';
    evaluateCommandString: 'man --all';
    evaluateCommandString: 'man browse';
    evaluateCommandString: 'man browse class';
    evaluateCommandString: 'man --find --exact browse class';
    evaluateCommandString: 'man --find browse|class';
    yourself