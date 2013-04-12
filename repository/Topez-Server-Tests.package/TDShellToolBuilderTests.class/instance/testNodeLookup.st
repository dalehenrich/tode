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
      (TDObjectNodeBuilder name)}.
      {''.
      #'bubba'.
      (TDObjectNodeBuilder name)}.
      {Object.
      #'view'.
      (TDObjectNodeBuilder name)}.
      {(Object class).
      #'view'.
      (TDObjectNodeBuilder name)}}