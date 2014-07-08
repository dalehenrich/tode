as yet unclassified
selectedProtocol
  selectedProtocol ifNil: [ selectedProtocol := self allProtocol ].
  ^ selectedProtocol