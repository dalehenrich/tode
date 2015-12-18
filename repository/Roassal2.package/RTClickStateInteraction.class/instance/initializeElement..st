hooks
initializeElement: element
	element when: TRMouseClick do: [ :event | self clickOn: event element ]