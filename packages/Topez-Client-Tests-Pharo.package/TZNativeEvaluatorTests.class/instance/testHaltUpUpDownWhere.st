testing
testHaltUpUpDownWhere
    | result x |
    result := self runHaltUpUpDownWhere.
    self
        assert:
            (x := result asString)
                =
                    '1 Object class >> halt
	receiver { sz:0 SmallInteger} 1
==> 2 UndefinedObject class >> DoIt
	receiver { sz:0 UndefinedObject} nil
3 Compiler class >> evaluate:in:to:notifying:ifFail:logged:
	receiver { sz:6 Compiler} a Compiler
4 Metaclass >> evaluate:for:notifying:logged:
	receiver { sz:13 Compiler class} Compiler
5 Metaclass >> evaluate:for:logged:
	receiver { sz:13 Compiler class} Compiler
6 Metaclass >> evaluate:
	receiver { sz:13 Compiler class} Compiler
7 TopezPharoSession class >> evaluate:
	receiver { sz:0 TopezPharoSession} a TopezPharoSession
8 BlockClosure class >> on:do:
	receiver { sz:5 BlockClosure} [result := Compiler ...etc...
9 TopezPharoSession class >> evaluate:
	receiver { sz:0 TopezPharoSession} a TopezPharoSession
10 BlockClosure class >> newProcess
	receiver { sz:6 BlockClosure} [[result := Compiler...etc...'