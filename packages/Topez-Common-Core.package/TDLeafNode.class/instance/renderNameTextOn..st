*topez-common-core
renderNameTextOn: textStream
    | attributes |
    attributes := self isTopezSourceNode
        ifTrue: [ 
            {(TextColor color: Color brown).
            (TextEmphasis italic)} ]
        ifFalse: [ {(TextColor color: Color blue)} ].
    textStream nextPutAll: (Text string: self printName attributes: attributes)