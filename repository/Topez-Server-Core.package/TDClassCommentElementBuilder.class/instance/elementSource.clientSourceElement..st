as yet unclassified
elementSource: source clientSourceElement: clientSourceElement
  "need to transform text objects using ston for transfer over wire"

  self object comment: (STON fromUTF8EncodedString: source) asString.
  ^ true