as yet unclassified
tokens
  tokens ifNil: [ tokens := self tokenize: self commandLine trimBoth ].
  ^ tokens