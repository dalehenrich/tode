events-registering
when: event do: block
	self addInteraction: [ :element | element when: event do: block ]