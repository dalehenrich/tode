adding - removing
addAll: someElements
	someElements do: [ :el | self add: el ]