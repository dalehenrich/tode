as yet unclassified
testWindowLookup
  "object aspect expected"

  self
    executeWindowBuilderLookupSpecs:
      {{(TDStack new).
      #'stack'.
      (TDStackClientListElementBuilder name)}.
      {(TDStackFrame new).
      #'stack'.
      (TDClientObjectElementBuilder name)}.
      {(TDStackFrame new).
      #'source'.
      (TDStackFrameMethodElementBuilder name)}.
      {(TDStackFrame new).
      #'contents'.
      (TDStackFrameContentsClientListElementBuilder name)}}