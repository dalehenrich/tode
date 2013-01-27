as yet unclassified
testNodeInspectLookup
  "object aspect expected"

  self
    executeNodeBuilderLookupSpecs:
      {{(Object new).
      #'inspect'.
      (TDObjectNodeBuilder name)}.
      {''.
      #'inspect'.
      (TDObjectNodeBuilder name)}.
      {Object.
      #'inspect'.
      (TDObjectNodeBuilder name)}.
      {(Object class).
      #'inspect'.
      (TDObjectNodeBuilder name)}}