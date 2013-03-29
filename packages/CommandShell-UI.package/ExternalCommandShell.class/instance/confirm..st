interrupt handling
confirm: queryString
	"Put up a yes/no menu with caption queryString. Answer true if the 
	response is yes, false if no."

	self flag: #FIXME. "bypass the dialog and assume true"

	self cliShell backgroundMessageQueue addLast: queryString, ' (yes)', Character lf asString.
	^ true
