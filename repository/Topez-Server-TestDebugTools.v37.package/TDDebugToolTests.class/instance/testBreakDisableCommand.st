as yet unclassified
testBreakDisableCommand
  "run without errors ... to keep me honest"

  self evaluateCommandString: 'break --help disable'.
  self evaluateCommandString: 'break clear'.
  self evaluateCommandString: 'break disable'.
  true
    ifTrue: [ 
      "trouble dealing with breakpoints on travis"
      ^ self ].
  self evaluateCommandString: 'break set TDDebugToolTests>>breakpointMethod 1 2'.
  self should: [ self breakpointMethod ] raise: self breakpointException.
  self evaluateCommandString: 'break disable 1 2'.
  self shouldnt: [ self breakpointMethod ] raise: self breakpointException