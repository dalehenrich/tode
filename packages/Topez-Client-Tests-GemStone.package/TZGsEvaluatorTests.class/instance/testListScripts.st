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
	topezFilter
	topez
	boom
	tz
	ar
	emptyLog
topez
	filterClasses
	testing'