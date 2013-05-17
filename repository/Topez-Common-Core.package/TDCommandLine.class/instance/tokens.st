as yet unclassified
tokens
  tokens ifNil: [ tokens := self commandLine trimBoth findTokens: ' ' ].
  ^ tokens