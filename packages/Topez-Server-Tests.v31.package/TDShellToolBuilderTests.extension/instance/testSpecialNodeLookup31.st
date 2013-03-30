*topez-server-tests.v31
testSpecialNodeLookup31
  "object aspect expected"

  self
    executeNodeBuilderLookupSpecs:
      {{(FixedPoint fromString: '117.145').
      #'view'.
      (TDSpecialNodeBuilder name)}}