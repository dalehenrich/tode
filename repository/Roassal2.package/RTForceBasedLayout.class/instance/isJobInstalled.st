testing
isJobInstalled
	"Return true if the class Job exist. This is mainly useful to make a distinction between Pharo and VisualWorks"
	^ Smalltalk includesKey: #Job