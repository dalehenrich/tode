tests
testListScripts
    | result x |
    result := self runListScripts.
    self
        assert:
            (x := result asString withSqueakLineEndings)
                =
                    'run
	init
	testing
input
	testing
	topezFilter
	topez
topez
	filterClasses
	testing'