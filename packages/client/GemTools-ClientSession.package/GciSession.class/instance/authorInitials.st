Accessors
authorInitials

	Smalltalk at: #Author ifPresent: [:cl | ^cl fullName].
	"deprecated in Pharo"
	^Utilities authorInitials