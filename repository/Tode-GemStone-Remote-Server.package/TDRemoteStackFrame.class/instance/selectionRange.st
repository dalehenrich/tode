private
selectionRange
    selectionRange ifNil: [ selectionRange := self calculateSelectionRange ].
    ^ selectionRange