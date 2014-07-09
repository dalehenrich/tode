*tode-ast-extensions
parseWorkspaceStatementList: workspaceNode into: aSequenceNode
  | statements return periods returnPosition node |
  return := false.
  statements := OrderedCollection new.
  periods := OrderedCollection new.
  self addCommentsTo: aSequenceNode.
  [ currentToken isSpecial and: [ currentToken value = $. ] ]
    whileTrue: [ 
      periods add: currentToken start.
      self step ].
  [ 
  self atEnd
    or: [ currentToken isSpecial and: [ '])}' includes: currentToken value ] ] ]
    whileFalse: [ 
      return
        ifTrue: [ self parserError: 'End of statement list encounted' ].
      (currentToken isSpecial and: [ currentToken value = $^ ])
        ifTrue: [ 
          returnPosition := currentToken start.
          self step.
          node := self returnNodeClass
            return: returnPosition
            value: self parseAssignment.
          statements add: node.
          return := true ]
        ifFalse: [ 
          node := self parseAssignment.
          statements add: node ].
      (currentToken isSpecial and: [ currentToken value = $. ])
        ifTrue: [ 
          periods add: currentToken start.
          self step.
          self addCommentsTo: node ]
        ifFalse: [ return := true ].
      [ currentToken isSpecial and: [ currentToken value = $. ] ]
        whileTrue: [ 
          periods add: currentToken start.
          self step ] ].
  self addCommentsTo: workspaceNode.
  aSequenceNode
    statements: statements;
    periods: periods.
  ^ aSequenceNode