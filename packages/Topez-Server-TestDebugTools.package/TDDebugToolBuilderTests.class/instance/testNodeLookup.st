as yet unclassified
testNodeLookup
  self
    executeNodeBuilderLookupSpecs:
      {{(TDStack new).
      #'view'.
      (TDStackNodeBuilder name)}.
      {(TDStackFrame new).
      #'view'.
      (TDStackFrameNodeBuilder name)}}