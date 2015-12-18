accessing
sortedAssociationsBounded

	^ self sortedAssociations copyFrom: 1 to: (self sortedAssociations size min: maxWords)