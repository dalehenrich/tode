command prompt
prompt

	self scheduleToEvaluate:
		[self show: self cliShell promptString.
		self restoreSelectionMarker]