as yet unclassified
source: aStringOrText
    | stonString |
    stonString := STON toString: (aStringOrText asText removeAttribute: TextFontChange defaultFontChange).
    self setMessageSend value: stonString