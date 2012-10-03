stash
filterAndForwardEvent: keyboardEvent
    "Filter keyboardEvent, taking special action if needed. If a child process
	is active, forward keyboardEvent to the child and answer nil. Otherwise
	answer keyboardEvent."

    ^ keyboardEvent