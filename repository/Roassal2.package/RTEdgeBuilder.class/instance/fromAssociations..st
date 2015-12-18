public associations
fromAssociations: associations
	"associations have to be between model objects"
	^ self objects: associations from: #key to: #value