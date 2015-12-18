hooks
initializeFirstTimeElement: element
	element when: TRMouseRightClick do: [ :event |
		TRUtil instance widgetFactory menuForAssociations: actions on: element
	]