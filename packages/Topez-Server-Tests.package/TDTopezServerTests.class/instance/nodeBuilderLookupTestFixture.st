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
  {''.
  #'inspect'.
  TDObjectNodeBuilder}.
  {Object.
  #'edit'.
  TDObjectNodeBuilder}.
  {(Object class).
  #'edit'.
  TDObjectNodeBuilder}.
  {1.
  #'edit'.
  TDObjectNodeBuilder}}