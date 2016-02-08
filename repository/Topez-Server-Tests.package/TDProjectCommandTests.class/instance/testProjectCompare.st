tests
testProjectCompare
  self
    evaluateCommandString: 'project --help compare';
    evaluateCommandString: 'project compare Tode';
    evaluateCommandString: 'project compare --commit=dd9c564 Tode';
    yourself