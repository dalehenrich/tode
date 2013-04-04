testing
testHaltUpUpDownWhere
    | result x |
    result := self runHaltUpUpDownWhere.
    self
        assert:
            (x := result asString)
                =
                   '1 Object >> halt
	receiver { sz:0 SmallInteger} 1
==> 2 UndefinedObject >> DoIt
	receiver { sz:0 UndefinedObject} nil
3 Compiler >> evaluate:in:to:notifying:ifFail:logged:
	receiver { sz:6 Compiler} a Compiler
4 Compiler class >> evaluate:for:notifying:logged:
	receiver { sz:13 Compiler class} Compiler
5 Compiler class >> evaluate:for:logged:
	receiver { sz:13 Compiler class} Compiler
6 Compiler class >> evaluate:
	receiver { sz:13 Compiler class} Compiler
7 TopezPharoSession >> evaluate:
	receiver { sz:0 TopezPharoSession} a TopezPharoSession
8 BlockClosure >> on:do:
	receiver { sz:5 BlockClosure} [result := Compiler ...etc...
9 TopezPharoSession >> evaluate:
	receiver { sz:0 TopezPharoSession} a TopezPharoSession
10 BlockClosure >> newProcess
	receiver { sz:6 BlockClosure} [[result := Compiler...etc...'