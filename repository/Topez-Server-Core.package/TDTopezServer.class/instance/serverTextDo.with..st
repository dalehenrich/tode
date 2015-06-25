client callbacks
serverTextDo: accumulateBlock with: doitString
  | result text commandResult |
  self accumulateBlocks remove: accumulateBlock ifAbsent: [  ].
  result := accumulateBlock value: doitString value: objIn value.
  commandResult := result asTDCommandResult.
  self objIn: commandResult resultObject.
  text := commandResult renderAsTextFor: self.
  self commitTransaction.
  ^ self objectSerializer toString: text