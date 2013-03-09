as yet unclassified
ol
  <topezCommand: 'ol' manPage: #'olManPage'>
  ^ [ :topez :objIn :tokens :windowId | 
  | commandTokens command |
  commandTokens := tokens copyFrom: 2 to: tokens size.
  command := ('ol' , (commandTokens at: 1)) asSymbol.
  (self
    topez: topez
    objIn: objIn
    tokens: tokens
    windowId: windowId) perform: command ]