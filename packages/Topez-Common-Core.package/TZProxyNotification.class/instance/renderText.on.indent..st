rendering
renderText: attribute on: textStream indent: indent
    | printBlock |
    printBlock := self class
        at: attribute
        forClass: self class className
        ifAbsent: [ 
            | stream |
            stream := WriteStream on: String new.
            self basicPrintOn: stream indent: indent.
            textStream nextPutAll: (Text string: stream contents attribute: (TextColor color: self renderTextColor)).
            ^ self ].
    printBlock value: self value: textStream value: indent