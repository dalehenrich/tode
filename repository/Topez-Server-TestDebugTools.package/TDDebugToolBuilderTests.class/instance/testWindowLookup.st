as yet unclassified
testWindowLookup
  "object aspect expected"

  self
    executeWindowBuilderLookupSpecs:
      {{(TDStack new).
      #'navigate'.
      (TDStackClientListElementBuilder name)}.
      {(TDStackFrame new).
      #'navigate'.
      (TDClientObjectElementBuilder name)}.
      {(TDStackFrame new).
      #'source'.
      (TDStackFrameMethodElementBuilder name)}.
      {(TDStackFrame new).
      #'contents'.
      (TDStackFrameContentsClientListElementBuilder name)}}