visitor-double dispatching
acceptQueryBlockNode: aBlockNode
  self bracketWith: '{}' around: [ self formatBlock: aBlockNode ]