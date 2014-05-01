as yet unclassified
testBrowseDiff
  "run without errors ... to keep me honest"

  self
    evaluateCommandString: 'browse --help diff';
    evaluateCommandString:
        'browse diff TDShellBrowseCommandTests>>testBrowseDiff  TDShellBrowseCommandTests>>testBrowseDiff';
    evaluateCommandString:
        'browse diff `TDShellTool class>>find`>>findMethods: `TDShellTool class>>browse`';
    yourself