as yet unclassified
testClassWndowLookup
  "object aspect expected"

  self
    executeWindowBuilderLookupSpecs:
      {{SmallInteger.
      #'browse'.
      (TDClassHierarchyListElementBuilder name)}.
      {SmallInteger.
      #'view'.
      (TDClientObjectElementBuilder name)}.
      {SmallInteger.
      #'inspect'.
      (TDClientObjectElementBuilder name)}}