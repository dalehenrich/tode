as yet unclassified
source: aStringOrText
    | stonString |
    self halt.
    stonString := STON toString: (aStringOrText asText removeAttribute: TextFontChange defaultFontChange).
    Transcript
        cr;
        show: 'set: ' , stonString.
    self setMessageSend value: stonString