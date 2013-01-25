as yet unclassified
testSpecialNodeInspectLookup
  "object aspect expected"

  self
    executeNodeBuilderLookupSpecs:
      {{$o.
      #'inspect'.
      TDCharacterNodeBuilder}.
      {117.
      #'inspect'.
      TDIntegerNodeBuilder}.
      {(SmallInteger maximumValue + 1).
      #'inspect'.
      TDIntegerNodeBuilder}.
      {(SmallInteger minimumValue - 1).
      #'inspect'.
      TDIntegerNodeBuilder}.
      {117.145.
      #'inspect'.
      TDSpecialNodeBuilder}.
      {117.145s3.
      #'inspect'.
      TDSpecialNodeBuilder}.
      {(FixedPoint fromString: '117.145').
      #'inspect'.
      TDSpecialNodeBuilder}.
      {true.
      #'inspect'.
      TDSpecialNodeBuilder}.
      {nil.
      #'inspect'.
      TDSpecialNodeBuilder}}