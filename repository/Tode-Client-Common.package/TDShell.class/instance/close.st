accessing
close
	"close all windows"

	windowStatus ifNil: [ ^ self ].
	windowStatus close.
	^ ''