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
	init
input
	tz
	testing
	topezFilter
	topez
topez
	filterClasses
	testing'