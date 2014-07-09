*tode-ast-extensions
acceptWorkspaceNode: aWorkspaceNode
  self
    indentAround: [ 
      self formatMethodCommentFor: aWorkspaceNode.
      self visitNode: aWorkspaceNode body ]