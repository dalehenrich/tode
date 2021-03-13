as yet unclassified
testBreakStepsCommand
  "run without errors ... to keep me honest"

  self evaluateCommandString: 'break --help steps'.
  self
    evaluateCommandString:
      'break steps TDDebugToolTests>>breakpointMethod TDDebugToolTests>>testBreakStepsCommand'