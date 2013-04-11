as yet unclassified
testWndowLookup
  "object aspect expected"

  self
    executeWindowBuilderLookupSpecs:
      {{(TDObjectNode new).
      #'edit'.
      (TDDirectoryNodeClientListElementBuilder name)}.
      {(TDDirectoryNode new).
      #'edit'.
      (TDDirectoryNodeClientListElementBuilder name)}.
      {(Object new).
      #'edit'.
      (TDClientObjectElementBuilder name)}.
      {(TDScriptLeafNode new).
      #'edit'.
      (TDClientScriptElementBuilder name)}.
      {(TDSmalltalkLeafNode new).
      #'edit'.
      (TDClientCodeElementBuilder name)}.
      {(TDTopezLeafNode new).
      #'edit'.
      (TDClientSourceElementBuilder name)}.
      {(TDTxtLeafNode new).
      #'edit'.
      (TDClientTextElementBuilder name)}}