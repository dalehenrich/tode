input character filtering
filterAndForward: aCharacter
	"Filter aCharacter, taking special action if needed. If a child process is active,
	forward aCharacter to the child and answer nil. Otherwise answer aCharacter."

	^ self cliShell filterAndForward: aCharacter