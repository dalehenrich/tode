layout-utils
translateElementsVertically: row in: container
	| currentPoint |
	currentPoint := container origin.
	row do: [ :each | 
		each translateBy: currentPoint+(each extent/2).
		currentPoint := currentPoint translateBy: (0@(each height))]