printing
printOn: aStream indent: indent
    | textStream |
    textStream := TextStream on: Text new.
    self renderText: #'basic' on: textStream indent: indent.
    aStream nextPutAll: textStream contents asString