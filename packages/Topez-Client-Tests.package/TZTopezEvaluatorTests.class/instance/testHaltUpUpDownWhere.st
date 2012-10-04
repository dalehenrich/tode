testing
testHaltUpUpDownWhere
    | result x |
    self pushPrintBlocks.
    result := self evaluator
        evaluate: 'run';
        evaluate: '1 halt';
        evaluate: '%';
        evaluate: 'up';
        evaluate: 'up';
        evaluate: 'down';
        evaluate: 'where'.
    self
        assert:
            (x := result asString)
                =
                    '1 AbstractException class >> #''_signalWith:''		@6 line 25
==> 2 Metaclass3 >> #''signal''		@3 line 5
3 Object class >> #''halt''		@2 line 5
4 UndefinedObject >> nil		@2 line 1
5 String class >> #''evaluate''		@5 line 9
6 TZEngine class >> #''executeRunCmd:''		@4 line 2
7 TZTopezRunCmd class >> #''executeAgainst:''		@2 line 2
8 Metaclass3 >> #''executeCommandFrom:''		@4 line 2
9 UndefinedObject >> nil		@2 line 1
10 Metaclass3 >> #''_gsReturnToC''		@1 line 1
'