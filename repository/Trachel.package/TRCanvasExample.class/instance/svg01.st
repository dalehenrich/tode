svg
svg01

	"
	self new svg01
	"
	| c svg |
	c := TRCanvas new.
	svg := TRSVGPath new path: 'M256,116.656L308.021,186H203.979L256,116.656z M256,50L123.966,226h264.068L256,50z M308.021,326

	L256,395.345L203.979,326H308.021z M388.034,286H123.966L256,462L388.034,286z'.
	svg scaleBy: 0.1.
	c addShape: svg.
	c open