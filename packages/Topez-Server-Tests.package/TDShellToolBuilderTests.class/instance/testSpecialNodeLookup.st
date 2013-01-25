as yet unclassified
testSpecialNodeLookup
  "object aspect expected"

  self
    executeNodeBuilderLookupSpecs:
      {{$o.
      #'edit'.
      TDCharacterNodeBuilder}.
      {117.
      #'edit'.
      TDIntegerNodeBuilder}.
      {(SmallInteger maximumValue + 1).
      #'edit'.
      TDIntegerNodeBuilder}.
      {(SmallInteger minimumValue - 1).
      #'edit'.
      TDIntegerNodeBuilder}.
      {117.145.
      #'edit'.
      TDSpecialNodeBuilder}.
      {117.145s3.
      #'edit'.
      TDSpecialNodeBuilder}.
      {(FixedPoint fromString: '117.145').
      #'edit'.
      TDSpecialNodeBuilder}.
      {true.
      #'edit'.
      TDSpecialNodeBuilder}.
      {nil.
      #'edit'.
      TDSpecialNodeBuilder}}