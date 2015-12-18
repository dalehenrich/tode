public associations
fromElementAssociations: associationsBetweenElements
	associationsBetweenElements do: [ :assoc |
		self edgeFrom: assoc key to: assoc value ]