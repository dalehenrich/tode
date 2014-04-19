as yet unclassified
source: aStringOrText
  "TextFontChange defaultFontChange TextAction"

  | txt stonString |
  txt := aStringOrText asText.
  txt
    removeAttributesThat: [ :attrib | 
      (attrib isKindOf: (Smalltalk at: #'TextFontChange'))
        or: [ 
          (attrib isKindOf: (Smalltalk at: #'TextAction'))
            or: [ 
              (attrib isKindOf: (Smalltalk at: #'TextAlignment'))
                or: [ 
                  (attrib isKindOf: (Smalltalk at: #'TextIndent'))
                    or: [ attrib isKindOf: (Smalltalk at: #'TextKern') ] ] ] ] ]
    replaceAttributesThat: [ :attrib | false ]
    by: [ :ignored |  ].
  stonString := STON toString: txt.
  super source: stonString