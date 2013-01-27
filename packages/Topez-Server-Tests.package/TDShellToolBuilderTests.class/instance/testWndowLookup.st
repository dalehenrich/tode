as yet unclassified
testWndowLookup
  "object aspect expected"

  self
    executeWindowBuilderLookupSpecs:
      {{(TDObjectNode new).
      #'browse'.
      (TDDirectoryNodeClientListElementBuilder name)}.
      {(TDDirectoryNode new).
      #'browse'.
      (TDDirectoryNodeClientListElementBuilder name)}.
      {(Object new).
      #'browse'.
      (TDClientObjectElementBuilder name)}.
      {(TDScriptLeafNode new).
      #'browse'.
      (TDClientScriptElementBuilder name)}.
      {(TDSmalltalkLeafNode new).
      #'browse'.
      (TDClientCodeElementBuilder name)}.
      {(TDTopezLeafNode new).
      #'browse'.
      (TDClientSourceElementBuilder name)}.
      {(TDTxtLeafNode new).
      #'browse'.
      (TDClientTextElementBuilder name)}}