accessing
serverType
	"#standard or #external"

	^ serverType ifNil: [ serverType := #standard ]