public
when: evt do: callback
	self do: [ :e | e when: evt do: callback ]