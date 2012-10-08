accessing
listAt: index
    | textStream |
    textStream := TextStream on: Text new.
    (self list at: index) asTopezProxy renderText: #'basic' on: textStream.
    ^ textStream contents