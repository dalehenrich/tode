converting
gather: columnIndex using: twoArgBlock
	| d key | 
	d := Dictionary new.
	values do: [ :row |
		key := row at: columnIndex.
		(d includesKey: key)
			ifTrue: [ d at: key put: (twoArgBlock value: (d at: key) value: row) ]
			ifFalse: [ d at: key put: row ] ].
	values := d values