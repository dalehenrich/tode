private
rows: rows columns: columns contents: anArray
	(((rows isInteger and: [rows >= 0]) and: 
		[columns isInteger and: [columns >= 0]]) and:
			[ rows * columns = anArray size ]) ifFalse: [ self error: 'Wrong parameters' ].
	nrows := rows.
	ncols := columns.
	contents := anArray