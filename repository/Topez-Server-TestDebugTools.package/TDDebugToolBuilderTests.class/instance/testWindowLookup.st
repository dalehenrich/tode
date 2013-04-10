as yet unclassified
testWindowLookup
  "object aspect expected"

  self
    executeWindowBuilderLookupSpecs:
      {{(TDStack new).
      #'browse'.
      (TDStackClientListElementBuilder name)}.
      {(TDStackFrame new).
      #'browse'.
      (TDClientObjectElementBuilder name)}.
      {(TDStackFrame new).
      #'source'.
      (TDStackFrameMethodElementBuilder name)}.
      {(TDStackFrame new).
      #'contents'.
      (TDStackFrameContentsClientListElementBuilder name)}}