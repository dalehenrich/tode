as yet unclassified
windowBuilderLookupTestFixture
  "object aspect expected"

  ^ {{(TDObjectNode new).
  #'edit'.
  TDDirectoryNodeClientListElementBuilder}.
  {(TDObjectNode new).
  #'inspect'.
  TDDirectoryNodeClientListElementBuilder}.
  {(TDDirectoryNode new).
  #'edit'.
  TDDirectoryNodeClientListElementBuilder}.
  {(TDDirectoryNode new).
  #'inspect'.
  TDDirectoryNodeClientListElementBuilder}}