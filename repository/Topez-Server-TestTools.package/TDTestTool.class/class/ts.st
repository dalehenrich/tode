as yet unclassified
ts
  <topezCommand: 'ts' manPage: #'tsManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  | commandTokens command |
  commandTokens := tokens copyFrom: 2 to: tokens size.
  command := (commandTokens at: 1) asSymbol.
  (self
    topez: topez
    objIn: objIn
    tokens: commandTokens
    windowId: windowId) perform: command ]