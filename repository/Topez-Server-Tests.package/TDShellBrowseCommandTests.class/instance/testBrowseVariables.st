as yet unclassified
testBrowseVariables
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'browse --help variables';
    evaluateCommandString: 'browse variables --class=TDShellTool listLimit';
    yourself