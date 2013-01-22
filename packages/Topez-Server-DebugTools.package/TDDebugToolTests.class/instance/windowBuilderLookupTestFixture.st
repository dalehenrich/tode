as yet unclassified
windowBuilderLookupTestFixture
  "object aspect expected"

  ^ {{(TDStack new).
  #'edit'.
  TDStackClientListElementBuilder}.
  {(TDStackFrame new).
  #'source'.
  TDStackFrameMethodElementBuilder}.
  {(TDStackFrame new).
  #'contents'.
  TDStackFrameContentsClientListElementBuilder}}