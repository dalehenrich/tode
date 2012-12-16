as yet unclassified
debug
    | stack |
    stackNode := self topez lookup: '.ex/debug'.
    topez setCurrentNode: stackNode.
    ^ (topez commands at: 'ds') block
        value: topez
        value: stackNode
        value: #('ds')
        value: nil