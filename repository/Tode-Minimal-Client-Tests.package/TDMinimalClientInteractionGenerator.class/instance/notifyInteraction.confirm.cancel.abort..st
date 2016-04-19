interactions
notifyInteraction: prompt confirm: confirm cancel: cancel abort: abort
	^ (GsNotifyInteraction
		prompt: prompt
		confirm: confirm
		cancel: cancel
		abort: abort) signal