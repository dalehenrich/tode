*topez-common-core
renderText: attribute on: textStream indent: indent
    | attributes |
    attributes := self isTopezSourceNode
        ifTrue: [ 
            {(TextColor color: Color brown).
            (TextEmphasis italic)} ]
        ifFalse: [ {(TextColor color: Color blue)} ].
    textStream nextPutAll: (Text string: self printString attributes: attributes)