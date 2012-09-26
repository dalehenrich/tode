Public
login: gsPassword osUser: osUser osPassword: osPassword initializeServer: initializeServer

	"| time result |
	time := Time millisecondsToRun: ["
	| result |
	self class gsCursor showWhile: [
		result := self library
			apiGciSetNet: stoneNRS a: osUser a: osPassword a: gemNRS;
			apiGciLogin: userID a: gsPassword.
	].
	result ifTrue: [
		self class fullCompressionEnabled 
			ifTrue: [self library apiGciEnableFullCompression].
		number := self library apiGciGetSessionId.
		initializeServer
			ifTrue: [
				self initializeServer.
				jadeServer := GsJadeServer session: self oopType: server.
				self executeString: 'GsPackagePolicy current authorInitials: ', self authorInitials printString.
				self executeString: '| x | System _cacheName: ((x := ''GemTools-'' , (GsSession serialOfSession: System session) printString , ''-'' , System myUserProfile userId) copyFrom: 1 to: (x size min: 31))'.
				supportsInspectingUndefined := supportsAutoAbort := false.
				(jadeServer setAutoCommit: self autoCommit autoMigrate: self autoMigrate) == #autoAbort
					ifTrue: [ supportsAutoAbort := true ].
				updateDistributor := OGUpdateDistributor new.
				updateDistributor registerClientForwarderIn: self.
				#(mercuryPanel annotationPanes optionalButtons)
					do: [:sel |
						self executeString: '(OBGemStonePlatform respondsTo: #preferencesDictionary) ifTrue: [OBGemStonePlatform preferencesDictionary at: #', sel asString, ' put: ', (Preferences perform: sel) asString, ']' ].
				supportsInspectingUndefined := self executeString: '(Smalltalk at: #SentButNotImplementedTest ifAbsent: []) ~~ nil']].
"].
	ObjectLog add: #login:->{aString. time}."
	^result.
	