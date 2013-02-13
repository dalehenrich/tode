private-parsing
parseArray
  | position node |
  position := currentToken start.
  self step.
  (currentToken isSpecial and: [ currentToken value = $: ])
    ifTrue: [ ^self parseQueryBlock: position ].
  node := self arrayNodeClass new.
  node left: position.
  self parseStatementList: false into: node.
  (currentToken isSpecial and: [ currentToken value = $} ])
    ifFalse: [ self parserError: 'expected }' ].
  node right: currentToken start.
  self step.
  ^ node