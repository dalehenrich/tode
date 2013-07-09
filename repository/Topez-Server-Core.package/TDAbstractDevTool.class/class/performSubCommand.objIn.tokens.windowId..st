as yet unclassified
performSubCommand: topez objIn: objIn tokens: tokens windowId: windowId
  "subcommand is formed by forming a selector from the base command (first token)
 ad the second token"

  | base commandTokens command |
  base := tokens at: 1.
  commandTokens := tokens copyFrom: 2 to: tokens size.
  command := (base , (commandTokens at: 1)) asSymbol.
  ^ (self
    topez: topez
    objIn: objIn
    tokens: commandTokens
    windowId: windowId) perform: command