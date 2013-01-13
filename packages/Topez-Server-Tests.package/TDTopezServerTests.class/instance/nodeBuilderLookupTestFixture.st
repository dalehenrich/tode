as yet unclassified
nodeBuilderLookupTestFixture
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
  {Object.
  #'edit'.
  TDObjectNodeBuilder}.
  {(Object class).
  #'edit'.
  TDObjectNodeBuilder}.
  {1.
  #'edit'.
  TDObjectNodeBuilder}}