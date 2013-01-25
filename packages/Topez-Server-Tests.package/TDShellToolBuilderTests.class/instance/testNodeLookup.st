as yet unclassified
testNodeLookup
  "object aspect expected"

  self
    executeNodeBuilderLookupSpecs:
      {{(Object new).
      #'edit'.
      TDObjectNodeBuilder}.
      {''.
      #'edit'.
      TDTxtLeafNodeBuilder}.
      {''.
      #'bubba'.
      TDTxtLeafNodeBuilder}.
      {''.
      #'inspect'.
      TDObjectNodeBuilder}.
      {Object.
      #'edit'.
      TDObjectNodeBuilder}.
      {(Object class).
      #'edit'.
      TDObjectNodeBuilder}}