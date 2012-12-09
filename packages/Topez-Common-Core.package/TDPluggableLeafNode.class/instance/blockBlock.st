as yet unclassified
blockBlock
    blockBlock
        ifNil: [ blockBlock := [ :aTopez :objIn :tokens :windowId | self topez evaluateString: self contents inContext: objIn ] ].
    ^ blockBlock