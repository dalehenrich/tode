accessing
debuggerWindowWidth
  debuggerWindowWidth ifNil: [ debuggerWindowWidth := 2 * self listWindowWidth ].
  ^ debuggerWindowWidth