hooks
initializeElement: element
	element
		when: eventClass
		do: [ :e | 
			(toObject rtValue: element) announce: e ]