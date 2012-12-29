as yet unclassified
source: aStringOrText
  | stonString |
  stonString := STON toString: (aStringOrText asText removeAttribute: TextFontChange defaultFontChange).
  super source: stonString