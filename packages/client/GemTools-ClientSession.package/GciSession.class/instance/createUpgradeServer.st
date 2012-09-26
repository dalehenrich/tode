Public
createUpgradeServer
	"to perform special handling when updating versions between 1.0-beta.0 and 1.0-beta.7, use a special jadeServer instance"
	| stream upgradeServer |
	(stream := WriteStream on: String new)
		nextPutAll: '| class |'; cr;
		nextPutAll: 'class := ', OGUpgradeJadeServer gsClassDefinition; cr;
		nextPutAll: 'UserGlobals at: #GS_Upgrade_JADE_SERVER_CLASS put: class.'; cr;
		yourself.
	self executeString: stream contents.
	OGUpgradeJadeServer selectorsDo: [:each | 
		| source result  |
		stream := WriteStream on: String new.
		source := OGUpgradeJadeServer sourceCodeAt: each.
		stream nextPutAll: '| source result symbolList |'; cr;
			nextPutAll: 'symbolList := System myUserProfile symbolList.'; cr;
			nextPutAll: 'source := '.
		source string printOn: stream.
		stream
			nextPutAll: '.'; cr;
			nextPutAll: '[result := GS_Upgrade_JADE_SERVER_CLASS'; cr;
			tab; nextPutAll: 'compileMethod: source'; cr;
			tab; nextPutAll: 'dictionaries: symbolList'; cr;
			tab; nextPutAll: 'category: ''category''] on: Warning do: [:ex | ex resume ].'; cr;
			nextPutAll: 'result ~~ nil ifTrue: [ ^GsMethod _sourceWithErrors: result fromString: source ].'; cr;
			yourself.
		result := self executeString: stream contents.
		result ~~ nil ifTrue: [ result error: 'Compile error for UpgradeJadeServer>>', each printString ].
	].
	stream := WriteStream on: String new.
	stream 
		nextPutAll: '| server  |'; cr;
		nextPutAll: 'server := GS_Upgrade_JADE_SERVER_CLASS new.'; cr;
		nextPutAll: 'SessionTemps current at: #Upgrade_JADESERVER_CURRENT put: server.'; cr;
		nextPutAll: 'UserGlobals removeKey: #GS_Upgrade_JADE_SERVER_CLASS.'; cr;
		nextPutAll: 'server.'; cr;
		yourself.
	upgradeServer := self executeString: stream contents.
	upgradeServer isNil ifTrue: [ stream contents error: 'nil upgradeServer' ].
	^upgradeServer