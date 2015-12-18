layout-utils
translateElementsHorizontally: row in: container

	| currentPoint |
	currentPoint := container origin.
	row do: [ :each |
		each translateTo: currentPoint + (each extent / 2).
		currentPoint := currentPoint translateBy: ((each width) @ 0 ).
	].