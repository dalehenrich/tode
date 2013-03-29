as yet unclassified
renderNameText
    | textStream |
    textStream := TextStream on: Text new.
    self renderNameTextOn: textStream.
    ^ textStream contents