initialize-release
initialize

	super initialize.
	self cliShell: (CommandShell new
			installCommands: self defaultBuiltinCommands;
			promptString: 'sqsh> ';
			addDependent: self;
			yourself).
	self setStdioStreams

