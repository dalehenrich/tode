accessing
models: objects
	| elements |
	self recordModels: objects.
	elements := shapeBuilder elementsOn: objects.
	interactionBuilder setUpElements: elements.
	view addAll: elements