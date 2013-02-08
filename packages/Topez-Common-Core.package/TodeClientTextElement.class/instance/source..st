as yet unclassified
source: aStringOrText
  "TextFontChange defaultFontChange TextAction"

  | txt stonString |
  txt := aStringOrText asText.
  txt
    removeAttributesThat: [ :attrib | 
      (attrib isKindOf: TextFontChange)
        or: [ 
          (attrib isKindOf: TextAction)
            or: [ (attrib isKindOf: TextAlignment) or: [ (attrib isKindOf: TextIndent) or: [ attrib isKindOf: TextKern ] ] ] ] ]
    replaceAttributesThat: [ :attrib | false ]
    by: [ :ignored |  ].
  stonString := STON toString: txt.
  super source: stonString