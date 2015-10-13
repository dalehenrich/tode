as yet unclassified
testFindVariables
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'find --help variables';
    evaluateCommandString: 'find variables --class=TDShellTool listLimit';
    yourself