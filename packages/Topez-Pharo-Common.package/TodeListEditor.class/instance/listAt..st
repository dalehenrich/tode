accessing
listAt: index
    | textStream |
    textStream := TextStream on: Text new.
    (self list at: index) asTopezProxy renderText: self renderAttribute on: textStream.
    ^ textStream contents