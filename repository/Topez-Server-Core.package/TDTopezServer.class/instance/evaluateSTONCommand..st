accessing
evaluateSTONCommand: stonCommand
  | command result text |
  self abortTransaction.
  self ensureSessionMethodsEnabled.
  command := self objectSerializer fromString: stonCommand.
  redirectTarget := command redirectTarget.
  result := self evaluateCommand: command objIn: objIn value.
  self objIn: result resultObject.
  self redirectObjIn: redirectTarget.
  self ensureSessionMethodsEnabled.
  text := result renderAsTextFor: self.
  ^ self objectSerializer toString: text