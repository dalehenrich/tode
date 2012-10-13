testing
testHaltUpUpDownWhere
    | result x |
    result := self runHaltUpUpDownWhere.
    self
        assert:
            (x := result asString)
                =
                    '1 AbstractException class >> _signalWith:		@6 line 25
	receiver [Halt] a Halt occurred (err...etc...
==> 2 Metaclass3 >> signal		@3 line 5
	receiver [Halt class] Halt
3 Object class >> halt		@2 line 5
	receiver [SmallInteger] 1
4 UndefinedObject >> nil		@2 line 1
	receiver [UndefinedObject] nil
5 String class >> evaluate		@5 line 9
	receiver [String] 1 halt
6 TZEngine class >> executeRunCmd:		@4 line 2
	receiver [TZEngine] aTZEngine
7 TZTopezRunCmd class >> executeAgainst:		@2 line 2
	receiver [TZTopezRunCmd] aTZTopezRunCmd
8 Metaclass3 >> executeCommandFrom:		@4 line 2
	receiver [TZEngine class] TZEngine
9 UndefinedObject >> nil		@2 line 1
	receiver [UndefinedObject] nil
10 Metaclass3 >> _gsReturnToC		@1 line 1
	receiver [UndefinedObject] nil'