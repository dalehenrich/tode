interaction
when: evt do: aOneArgBlock
	"Define a callback for the event evt (which could be a class event or an instance of a class event. aOneArgBlock is evaluated whenever the event is received."
	self announcer when: evt do: aOneArgBlock