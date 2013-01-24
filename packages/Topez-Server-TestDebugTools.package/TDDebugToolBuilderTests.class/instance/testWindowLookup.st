as yet unclassified
testWindowLookup
  "object aspect expected"

  self
    executeWindowBuilderLookupSpecs:
      {{(TDStack new).
      #'edit'.
      TDStackClientListElementBuilder}.
      {(TDStackFrame new).
      #'source'.
      TDStackFrameMethodElementBuilder}.
      {(TDStackFrame new).
      #'contents'.
      TDStackFrameContentsClientListElementBuilder}}