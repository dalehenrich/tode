as yet unclassified
testBreakEnableCommand
  "run without errors ... to keep me honest"

  self evaluateCommandString: 'break --help enable'.
  self evaluateCommandString: 'break enable'.
  self evaluateCommandString: 'break set TDDebugToolTests>>breakpointMethod 1 2'.
  self evaluateCommandString: 'break disable'.
  self shouldnt: [ self breakpointMethod ] raise: self breakpointException.
  self evaluateCommandString: 'break enable 1 2'.
  self should: [ self breakpointMethod ] raise: self breakpointException