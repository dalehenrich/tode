built-ins
close
	"close all windows"

	windowStatus ifNil: [ ^ nil ].
	windowStatus close.
	^ nil