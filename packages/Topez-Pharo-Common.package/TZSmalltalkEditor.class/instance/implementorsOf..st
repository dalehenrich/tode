menu messages
implementorsOf: aSelector
    "Open an implementors browser on the given selector"

    (self evaluator class commands at: 'edit')
        value: self evaluator
        value: self topez
        value:
            {'edit'.
            'implementors'.
            aSelector}