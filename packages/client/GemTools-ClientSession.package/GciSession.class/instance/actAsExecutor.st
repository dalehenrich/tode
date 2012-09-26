finalization
actAsExecutor
	"Prepare the receiver to act as executor for any resources associated with it"

	self release.
	super actAsExecutor