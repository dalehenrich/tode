private-parsing
parseQueryBlock: startPosition
  | position node |
  position := startPosition.
  node := self queryBlockNodeClass new.
  self parseBlockArgsInto: node.
  node left: position.
  node body: (self parseStatements: false).
  (currentToken isSpecial and: [ currentToken value = $} ])
    ifFalse: [ self parserError: '''}'' expected' ].
  node right: currentToken start.
  self step.
  ^ node