as yet unclassified
db
    <topezCommand: 'db' manPage: #'dbManPage'>
    ^ [ :topez :objIn :tokens :windowId | 
    | commandTokens command |
    commandTokens := tokens copyFrom: 2 to: tokens size.
    command := (commandTokens at: 1) asSymbol.
    (self
        topez: topez
        objIn: objIn
        tokens: commandTokens
        windowId: windowId) perform: command ]