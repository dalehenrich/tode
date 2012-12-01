as yet unclassified
blockBlock
    blockBlock
        ifNil: [ blockBlock := [ :aTopez :tokens :windowId | self topez evaluateString: self contents inContext: nil ] ].
    ^ blockBlock