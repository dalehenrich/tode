as yet unclassified
testWndowLookup
  "object aspect expected"

  self
    executeWindowBuilderLookupSpecs:
      {{(TDObjectNode new).
      #'browse'.
      TDDirectoryNodeClientListElementBuilder}.
      {(TDDirectoryNode new).
      #'browse'.
      TDDirectoryNodeClientListElementBuilder}.
      {(Object new).
      #'browse'.
      TDClientObjectElementBuilder}.
      {(TDScriptLeafNode new).
      #'browse'.
      TDClientScriptElementBuilder}.
      {(TDSmalltalkLeafNode new).
      #'browse'.
      TDClientCodeElementBuilder}.
      {(TDTopezLeafNode new).
      #'browse'.
      TDClientSourceElementBuilder}.
      {(TDTxtLeafNode new).
      #'browse'.
      TDClientTextElementBuilder}}