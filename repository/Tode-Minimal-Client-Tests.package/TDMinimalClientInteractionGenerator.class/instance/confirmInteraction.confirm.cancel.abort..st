interactions
confirmInteraction: prompt confirm: confirm cancel: cancel abort: abort
	^ (GsConfirmInteraction
		prompt: prompt
		confirm: confirm
		cancel: cancel
		abort: abort) signal