running
setUp
	super setUp.
	view := RTView new.
	
	1 to: 20 do: [ :i | view add: (RTBox elementOn: i) ]