as yet unclassified
nodeBuilderLookupTestFixture
  "object aspect expected"

  ^ {{(Object new).
  #'edit'.
  TDObjectNodeBuilder}.
  {''.
  #'edit'.
  TDTxtLeafNodeBuilder}.
  {''.
  #'bubba'.
  TDTxtLeafNodeBuilder}.
  {Object.
  #'edit'.
  TDObjectNodeBuilder}.
  {(Object class).
  #'edit'.
  TDObjectNodeBuilder}.
  {1.
  #'edit'.
  TDObjectNodeBuilder}}