*topez-server-31x-tests
testSpecialNodeLookup31
  "object aspect expected"

  self
    executeNodeBuilderLookupSpecs:
      {{(FixedPoint fromString: '117.145').
      #'view'.
      (TDSpecialNodeBuilder name)}}