command input
commandLineInput

	^ (self text copyFrom: self positionAfterPromptString to: self text size) asString.

