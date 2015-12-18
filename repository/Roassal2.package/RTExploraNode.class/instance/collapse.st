removing
collapse
	(self expandedNodes reject: [ :elem | elem id < (self id)]) do: [ :elem |
		elem collapse.
	].
	self remove.