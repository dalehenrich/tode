utility
renderAllDecoratorsInFront
	(decorators select: #isInFront) do: [ :aPlugin | aPlugin builder: self; render ]