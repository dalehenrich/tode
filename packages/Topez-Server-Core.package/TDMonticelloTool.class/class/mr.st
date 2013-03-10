as yet unclassified
mr
  <topezCommand: 'mr' manPage: #'mrManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  | commandTokens command |
  commandTokens := tokens copyFrom: 2 to: tokens size.
  command := ('mr' , (commandTokens at: 1)) asSymbol.
  (self
    topez: topez
    objIn: objIn
    tokens: commandTokens
    windowId: windowId) perform: command ]