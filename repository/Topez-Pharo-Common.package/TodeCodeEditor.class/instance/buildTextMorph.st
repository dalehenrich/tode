initialize-release
buildTextMorph
	^ (TZPluggableTextMorph
		on: self
		text: #contents
		accept: #acceptContents:notifying:
		readSelection: #getSelection
		menu: #codeMenu:)
		disallowKeyMapping;
		yourself