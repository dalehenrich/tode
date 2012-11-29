*topez-common-core
renderText: attribute on: textStream indent: indent
    textStream nextPutAll: (Text string: self printString attributes: {(TextColor color: Color blue)})