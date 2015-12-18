accessing
colorElement: aOneArgBlock
	shapes ifEmpty: [ self error: 'You first need to add shape before setting the color' ].
	shapes do: [ :s | s first colorElement: aOneArgBlock ]