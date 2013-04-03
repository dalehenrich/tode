as yet unclassified
testNodeLookup
  "object aspect expected"

  self
    executeNodeBuilderLookupSpecs:
      {{(Object new).
      #'view'.
      (TDObjectNodeBuilder name)}.
      {''.
      #'view'.
      (TDTxtLeafNodeBuilder name)}.
      {''.
      #'bubba'.
      (TDTxtLeafNodeBuilder name)}.
      {Object.
      #'view'.
      (TDObjectNodeBuilder name)}.
      {(Object class).
      #'view'.
      (TDObjectNodeBuilder name)}}