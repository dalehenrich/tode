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
5 String class >> evaluateInContext:symbolList:		@3 line 10
	receiver [String] 1 halt
6 TZEngine class >> executeExpressionFrom:inContext:level:		@4 line 3
	receiver [TZEngine] aTZEngine
7 Metaclass3 >> _gsReturnToC		@1 line 1
	receiver [UndefinedObject] nil'