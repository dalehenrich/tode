convenience
serverTextDo: accumulateBlock with: doitString
  | result text |
  self accumulateBlocks remove: accumulateBlock ifAbsent: [  ].
  result := accumulateBlock value: doitString value: objIn value.
  text := result displayWith: self displayPolicy.
  self commitTransaction.
  ^ STON toString: text