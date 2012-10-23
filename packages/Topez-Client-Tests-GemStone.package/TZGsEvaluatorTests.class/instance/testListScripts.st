testing
testListScripts
    | result x |
    result := self runListScripts.
    self
        assert:
            (x := result asString withSqueakLineEndings)
                =
                    'run
	testing
input
	log
	testing
	boom
	topezFilter
	topez
	tz
	emptyLog
topez
	filterClasses
	testing'