as yet unclassified
testSpecialNodeInspectLookup
  "object aspect expected"

  self
    executeNodeBuilderLookupSpecs:
      {{$o.
      #'inspect'.
      (TDCharacterNodeBuilder name)}.
      {117.
      #'inspect'.
      (TDIntegerNodeBuilder name)}.
      {(SmallInteger maximumValue + 1).
      #'inspect'.
      (TDIntegerNodeBuilder name)}.
      {(SmallInteger minimumValue - 1).
      #'inspect'.
      (TDIntegerNodeBuilder name)}.
      {117.145.
      #'inspect'.
      (TDSpecialNodeBuilder name)}.
      {117.145s3.
      #'inspect'.
      (TDSpecialNodeBuilder name)}.
      {true.
      #'inspect'.
      (TDSpecialNodeBuilder name)}.
      {nil.
      #'inspect'.
      (TDSpecialNodeBuilder name)}}