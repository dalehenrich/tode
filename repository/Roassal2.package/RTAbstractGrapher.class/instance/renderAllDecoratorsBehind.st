utility
renderAllDecoratorsBehind
	(decorators select: #isBehind) do: [ :aPlugin | aPlugin builder: self; render ]