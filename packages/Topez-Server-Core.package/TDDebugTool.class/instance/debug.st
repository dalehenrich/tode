as yet unclassified
debug
    | debugNode |
    debugNode := self topez lookup: '.ex/debug'.
    topez setCurrentNode: debugNode.
    ^ (topez commands at: 'ds') block
        value: topez
        value: debugNode
        value: #('ds')
        value: nil