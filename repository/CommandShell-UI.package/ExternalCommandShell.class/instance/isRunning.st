accessing
isRunning
	"True if my evaluation loop should be running. This instance variable supports
	restarting the evaluation loop after an image restart."

	^ isRunning ifNil: [isRunning := false]
