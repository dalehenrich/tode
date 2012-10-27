*topez-common-core
renderText: attribute on: textStream indent: indent
    | color |
    color := self isTopezSourceNode
        ifTrue: [ TextColor color: Color green ]
        ifFalse: [ TextColor color: Color blue ].
    textStream nextPutAll: (Text string: self printString attribute: color)