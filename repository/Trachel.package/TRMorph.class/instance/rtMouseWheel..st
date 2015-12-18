event-processed
rtMouseWheel: evt
	trachelCanvas
		announce:
			(TRMouseWheelEvent
				fromDirection: evt direction
				position: (trachelCanvas camera fromPixelToSpace: (self relativePositionFor: evt)))