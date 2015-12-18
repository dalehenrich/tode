adding
addRight: aDataSet
	"Essential method. Add a dataset into the grapher. Only non-empty set are considered"
	aDataSet numberOfPoints = 0 ifTrue: [ ^ self ].
	
	rightDataSets add: aDataSet.
	aDataSet builder: self