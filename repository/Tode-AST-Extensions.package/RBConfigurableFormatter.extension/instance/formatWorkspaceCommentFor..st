*tode-ast-extensions
formatWorkspaceCommentFor: aWorkspaceNode
  originalSource isNil
    ifTrue: [ ^ self ].
  aWorkspaceNode comments
    do: [ :each | 
      codeStream nextPutAll: (originalSource copyFrom: each first to: each last).
      self newLines: NewLinesAfterMethodComment ]