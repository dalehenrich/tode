visitor-double dispatching
acceptQueryBlockNode: aBlockNode
  self
    bracketWith: '{}'
    around: [ 
      [ 
      "query blocks are not nested"
      InQueryBlock := true.
      self formatBlock: aBlockNode ]
        ensure: [ InQueryBlock := false ] ]