as yet unclassified
nodeBuilderTestFixture
  "object aspect expectedBuilderClass"

  ^ {{(Object new).
  #'edit'.
  TDObjectNodeBuilder}.
  {''.
  #'edit'.
  TDTxtLeafNodeBuilder}.
  {''.
  #'bubba'.
  TDNodeBuilder}.
  {1.
  #'edit'.
  TDObjectNodeBuilder}}