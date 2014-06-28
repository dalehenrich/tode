*tode-ast-extensions
parseWorkspace
  | workspaceNode |
  workspaceNode := self workspaceNodeClass new.
  self step.
  self addCommentsTo: workspaceNode.
  workspaceNode body: (self parseStatements: false).
  ^ workspaceNode