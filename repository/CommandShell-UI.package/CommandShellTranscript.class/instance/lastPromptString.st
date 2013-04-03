accessing
lastPromptString
	"Answer the value of lastPromptString"

	^ lastPromptString ifNil: [lastPromptString := self cliShell promptString]