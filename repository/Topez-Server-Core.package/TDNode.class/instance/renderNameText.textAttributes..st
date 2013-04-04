as yet unclassified
renderNameText: aString textAttributes: textAttributes
    | textStream |
    textStream := TextStream on: Text new.
    self renderNameText: aString textAttributes: textAttributes on: textStream.
    ^ textStream contents