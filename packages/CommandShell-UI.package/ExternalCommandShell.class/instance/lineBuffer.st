accessing
lineBuffer
	"Answer the value of lineBuffer"

	^ lineBuffer ifNil: [lineBuffer := WriteStream on: '']