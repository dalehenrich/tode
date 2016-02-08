tests
testProjectBrowse
  self
    evaluateCommandString: 'project --help browse';
    evaluateCommandString: 'project browse --entry Tode';
    evaluateCommandString: 'project browse --baseline Tode';
    evaluateCommandString: 'project browse --configuration Tode';
    evaluateCommandString: 'project browse --categories Tode';
    evaluateCommandString: 'project browse --classes Tode';
    evaluateCommandString: 'project browse --dirty Tode';
    evaluateCommandString: 'project browse --packages Tode';
    evaluateCommandString: 'project browse --repositories Tode';
    evaluateCommandString: 'project browse --tests Tode';
    evaluateCommandString: 'project browse Tode';
    yourself