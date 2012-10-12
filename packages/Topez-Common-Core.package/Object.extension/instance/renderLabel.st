*topez-common-core
renderLabel
    | textStream |
    textStream := TextStream on: Text new.
    self renderText: #'label' on: textStream indent: 0.
    ^ textStream contents