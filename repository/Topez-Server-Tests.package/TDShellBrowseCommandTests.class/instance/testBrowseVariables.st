as yet unclassified
testBrowseVariables
  "run without errors ... to keep me honest"

  self topez
    evaluateCommandString: 'browse --help variables';
    evaluateCommandString: 'browse variables --class=TDShellTool listLimit';
    yourself