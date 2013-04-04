as yet unclassified
collectionBlock
    collectionBlock ifNil: [ collectionBlock := [ :aNode | #() ] ].
    ^ collectionBlock