menu messages
sendersOf: selectedSelector
    " opens a Browser on the given selector"

    (self evaluator class commands at: 'edit')
        value: self evaluator
        value: self topez
        value:
            {'edit'.
            'senders'.
            selectedSelector}