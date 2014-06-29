*tode-ast-extensions
parseWorkspace
  | workspaceNode sequenceNode args leftBar rightBar |
  ""
  workspaceNode := self workspaceNodeClass new.
  (currentToken notNil and: [ currentToken comments notNil ])
    ifTrue: [ 
      comments addAll: currentToken comments.
      currentToken comments: nil ].
  self addCommentsTo: workspaceNode.
  args := #().
  leftBar := rightBar := nil.
  currentToken isBinary
    ifTrue: [ 
      currentToken value = #'|'
        ifTrue: [ 
          leftBar := currentToken start.
          self step.
          args := self parseArgs.
          (currentToken isBinary and: [ currentToken value = #'|' ])
            ifFalse: [ self parserError: '''|'' expected' ].
          rightBar := currentToken start.
          self step ]
        ifFalse: [ 
          currentToken value = #'||'
            ifTrue: [ 
              rightBar := (leftBar := currentToken start) + 1.
              self step ] ] ].
  workspaceNode
    body:
      (self
        parseWorkspaceStatementList: workspaceNode
        into:
          (self sequenceNodeClass leftBar: leftBar temporaries: args rightBar: rightBar)).
  ^ workspaceNode