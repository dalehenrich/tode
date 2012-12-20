as yet unclassified
breakList: breakTokens
    "list"

    ^ (topez commands at: 'ds') block
        value: topez
        value: (self topez lookup: self defaultPath)
        value:
            {'ds'.
            (self defaultPath , 'breakpoints')}
        value: nil