Non-Blocking
interruptSemaphore: aSemaphore

	InputSensor classPool 
		at: #InterruptSemaphore
		put: aSemaphore.
	InputSensor default primInterruptSemaphore: aSemaphore.
