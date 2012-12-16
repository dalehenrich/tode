as yet unclassified
debug
    | debugNode stack |
    nodes := nil.
    debugNode := self topez lookup: '.ex/debug'.
    topez setCurrentNode: debugNode.
    stack := debugNode basicContents.
    1 to: stack frames size do: [ :index | 
        "prime nodes cache"
        self frameNode: index for: stack ].
    ^ (topez commands at: 'ds') block
        value: topez
        value: debugNode
        value: #('ds')
        value: nil