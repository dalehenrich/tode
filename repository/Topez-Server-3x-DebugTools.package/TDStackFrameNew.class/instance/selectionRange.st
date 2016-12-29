accessing
selectionRange
    selectionRange ifNil: [ selectionRange := self calculateSelectionRange ].
    ^ selectionRange