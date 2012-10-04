*topez-common-core
renderText
    | textStream |
    textStream := TextStream on: Text new.
    self renderText: #'basic' on: textStream indent: 0.
    ^ textStream contents