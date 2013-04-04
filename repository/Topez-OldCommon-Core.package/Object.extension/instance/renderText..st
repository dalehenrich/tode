*topez-oldcommon-core
renderText: attribute
    | textStream |
    textStream := TextStream on: Text new.
    self renderText: attribute on: textStream indent: 0.
    ^ textStream contents