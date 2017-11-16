source element
selectionRange
    selectionRange ifNil: [ selectionRange := self calculateSelectionRange ].
    ^ selectionRange