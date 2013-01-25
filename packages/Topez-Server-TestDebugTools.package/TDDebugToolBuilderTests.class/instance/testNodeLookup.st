as yet unclassified
testNodeLookup
  self
    executeNodeBuilderLookupSpecs:
      {{(TDStack new).
      #'view'.
      TDStackNodeBuilder}.
      {(TDStackFrame new).
      #'view'.
      TDStackFrameNodeBuilder}}