as yet unclassified
testWindowLookup
  "object aspect expected"

  self
    executeWindowBuilderLookupSpecs:
      {{(TDStack new).
      #'view'.
      (TDStackClientListElementBuilder name)}.
      {(TDStack new).
      #'browse'.
      (TDStackClientListElementBuilder name)}.
      {(TDStackFrame new).
      #'view'.
      (TDClientObjectElementBuilder name)}.
      {(TDStackFrame new).
      #'browse'.
      (TDClientObjectElementBuilder name)}.
      {(TDStackFrame new).
      #'source'.
      (TDStackFrameMethodElementBuilder name)}.
      {(TDStackFrame new).
      #'contents'.
      (TDStackFrameContentsClientListElementBuilder name)}}