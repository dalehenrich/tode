as yet unclassified
testWindowLookup
  "object aspect expected"

  self
    executeWindowBuilderLookupSpecs:
      {{(TDStack new).
      #'view'.
      TDStackClientListElementBuilder}.
      {(TDStack new).
      #'browse'.
      TDStackClientListElementBuilder}.
      {(TDStackFrame new).
      #'view'.
      TDClientObjectElementBuilder}.
      {(TDStackFrame new).
      #'browse'.
      TDClientObjectElementBuilder}.
      {(TDStackFrame new).
      #'source'.
      TDStackFrameMethodElementBuilder}.
      {(TDStackFrame new).
      #'contents'.
      TDStackFrameContentsClientListElementBuilder}}