as yet unclassified
testSpecialNodeLookup
  "object aspect expected"

  self
    executeNodeBuilderLookupSpecs:
      {{$o.
      #'view'.
      (TDCharacterNodeBuilder name)}.
      {117.
      #'view'.
      (TDIntegerNodeBuilder name)}.
      {(SmallInteger maximumValue + 1).
      #'view'.
      (TDIntegerNodeBuilder name)}.
      {(SmallInteger minimumValue - 1).
      #'view'.
      (TDIntegerNodeBuilder name)}.
      {117.145.
      #'view'.
      (TDSpecialNodeBuilder name)}.
      {117.145s3.
      #'view'.
      (TDSpecialNodeBuilder name)}.
      {(FixedPoint fromString: '117.145').
      #'view'.
      (TDSpecialNodeBuilder name)}.
      {true.
      #'view'.
      (TDSpecialNodeBuilder name)}.
      {nil.
      #'view'.
      (TDSpecialNodeBuilder name)}}