tests
testProjectLog
  self
    evaluateCommandString: 'project --help log';
    evaluateCommandString: 'project log Tode';
    evaluateCommandString: 'project log --limit=30 Tode';
    yourself