tests - server blocks
testSimpleServerBlockReferencingGemStoneClassesGlobalsAndMethods
	"UserGlobals and System are currently class variables ... want some kind of magic pool that allows compiler to resolve globals automagically."

	self assert: (self client onServerDo: [ UserGlobals at: #PHARO_SERVER_BLOCK ifAbsent: [  ] ]) = nil.
	self assert: (self client onServerDo: [ (UserGlobals at: #TDTopezServer) name ]) = 'TDTopezServer'.
	self
		assert:
			(self client
				onServerDo: [ System fetchSystemStatNames.
					true ])