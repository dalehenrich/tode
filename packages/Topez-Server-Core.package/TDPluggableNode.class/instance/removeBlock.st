as yet unclassified
removeBlock
    removeBlock ifNil: [ removeBlock := [ :aNode :elementName |  ] ].
    ^ removeBlock