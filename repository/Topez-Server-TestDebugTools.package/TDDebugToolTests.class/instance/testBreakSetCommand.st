as yet unclassified
testBreakSetCommand
  | breakpoints |
  self evaluateCommandString: 'break --help set'.
  self evaluateCommandString: 'break set TDDebugToolTests>>breakpointMethod 1 2'.
  breakpoints := self evaluateCommandString: 'break list'.
  self assert: breakpoints size = 2