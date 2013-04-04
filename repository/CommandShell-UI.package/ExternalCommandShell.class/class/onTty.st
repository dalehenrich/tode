instance creation
onTty
	"Answer a singleton instance. When called the first time, the shell is created
	and its evaluation loop is started. Subsequent calls answer the singleton
	instance, which may or may not be running. Use the #stop and #start messages
	to control the shell once it has been created."

	"ExternalCommandShell onTty"

	^ ExternalShell ifNil: [ExternalShell := self basicNew initialize].