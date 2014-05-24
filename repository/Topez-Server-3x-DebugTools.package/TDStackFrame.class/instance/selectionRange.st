as yet unclassified
selectionRange
    selectionRange ifNil: [ selectionRange := self calculateSelectionRange ].
    ^ selectionRange