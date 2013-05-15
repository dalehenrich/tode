as yet unclassified
bu
  <topezCommand: 'bu' manPage: #'buManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  | commandTokens command |
  commandTokens := tokens copyFrom: 2 to: tokens size.
  command := ('bu' , (commandTokens at: 1)) asSymbol.
  (self
    topez: topez
    objIn: objIn
    tokens: commandTokens
    windowId: windowId) perform: command ]