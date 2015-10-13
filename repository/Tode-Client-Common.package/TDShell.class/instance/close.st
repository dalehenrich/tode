built-ins
close
	"close all windows"

	windowStatus ifNil: [ ^ nil ].
	self deferFlushEventNotificationDuring: [ windowStatus close ].
	^ nil