as yet unclassified
testBreakClearCommand
  "run without errors ... to keep me honest"

  | breakpoints |
  self
    evaluateCommandString: 'break --help ';
    evaluateCommandString: 'break --help clear'.
  self evaluateCommandString: 'break clear'.
  breakpoints := self evaluateCommandString: 'break list'.
  self assert: breakpoints size = 0.
  self evaluateCommandString: 'break set TDDebugToolTests>>breakpointMethod 1 2'.
  breakpoints := self evaluateCommandString: 'break list'.
  self assert: breakpoints size = 2.
  self evaluateCommandString: 'break clear 1 2'.
  breakpoints := self evaluateCommandString: 'break list'.
  self assert: breakpoints size = 0