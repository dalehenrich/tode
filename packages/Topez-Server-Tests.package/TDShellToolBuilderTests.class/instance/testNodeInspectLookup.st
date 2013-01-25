as yet unclassified
testNodeInspectLookup
  "object aspect expected"

  self
    executeNodeBuilderLookupSpecs:
      {{(Object new).
      #'inspect'.
      TDObjectNodeBuilder}.
      {''.
      #'inspect'.
      TDObjectNodeBuilder}.
      {Object.
      #'inspect'.
      TDObjectNodeBuilder}.
      {(Object class).
      #'inspect'.
      TDObjectNodeBuilder}}