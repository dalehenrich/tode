typing support
bindBasicCmdKeyShortcuts
	"These are the keyboard mappings that are not defined by menu actions...
	 Standard keyboard navigation/editting keys. "

	self
		bindCharacter: Character arrowUp
			to: #executeLocalMenuAction:keyboardEvent:
			with: #listKeystrokeUp
			for: self;
		bindCharacter: Character arrowDown
			to: #executeLocalMenuAction:keyboardEvent:
			with: #listKeystrokeDown
			for: self;
		bindCharacter: Character arrowLeft
			to: #executeLocalMenuAction:keyboardEvent:
			with: #listKeystrokeLeft
			for: self;
		bindCharacter: Character arrowRight
			to: #executeLocalMenuAction:keyboardEvent:
			with: #listKeystrokeRight
			for: self