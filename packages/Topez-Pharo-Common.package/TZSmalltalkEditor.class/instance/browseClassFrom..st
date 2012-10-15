menu messages
browseClassFrom: aClassString
    self lineSelectAndEmptyCheck: [ ^ self ].
    (self evaluator class commands at: 'edit')
        value: self evaluator
        value: self topez
        value:
            {'edit'.
            'class'.
            aClassString}