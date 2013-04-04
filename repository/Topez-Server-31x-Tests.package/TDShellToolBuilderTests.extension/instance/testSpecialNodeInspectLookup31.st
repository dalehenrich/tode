*topez-server-31x-tests
testSpecialNodeInspectLookup31
  "object aspect expected"

  self
    executeNodeBuilderLookupSpecs:
      {{(FixedPoint fromString: '117.145').
      #'inspect'.
      (TDSpecialNodeBuilder name)}}