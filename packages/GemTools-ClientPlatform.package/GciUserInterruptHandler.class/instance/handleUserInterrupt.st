private
handleUserInterrupt

	[Project uiProcess 
		signalException: 
			(GciUserInterrupt new 
				suspendedContext: Project uiProcess suspendedContext;
			 	yourself)] fork