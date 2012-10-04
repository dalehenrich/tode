rendering
renderText: attribute on: textStream indent: indent
    | printBlock |
    printBlock := self class
        at: attribute
        forClass: self header className
        ifAbsent: [ 
            | stream |
            stream := WriteStream on: String new.
            self basicPrintOn: stream indent: indent.
            textStream nextPutAll: (Text string: stream contents attribute: (TextColor color: Color blue)).
            ^ self ].
    printBlock value: self value: textStream value: indent