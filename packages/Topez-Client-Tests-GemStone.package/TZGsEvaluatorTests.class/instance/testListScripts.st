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
	testing
	topezFilter
	topez
topez
	filterClasses
	testing'