as yet unclassified
minYRight
	self assert: [ rightDataSets notEmpty ] description: 'You need to specify at least one data set for the right axis'.
	^ (rightDataSets collect: #minY) min