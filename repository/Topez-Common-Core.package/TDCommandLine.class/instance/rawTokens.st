private
rawTokens
  tokens ifNil: [ tokens := self tokenize: self commandLine ].
  ^ tokens