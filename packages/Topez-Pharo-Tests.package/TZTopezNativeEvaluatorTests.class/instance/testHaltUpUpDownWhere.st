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
                    '1 Object class >> halt
	receiver { sz:0 SmallInteger} 1
==> 2 UndefinedObject class >> DoIt
	receiver { sz:0 UndefinedObject} nil
3 Compiler class >> evaluate:in:to:notifying:ifFail:logged:
	receiver { sz:0 Compiler} a Compiler
4 Metaclass >> evaluate:for:notifying:logged:
	receiver { sz:0 Compiler class} Compiler
5 Metaclass >> evaluate:for:logged:
	receiver { sz:0 Compiler class} Compiler
6 Metaclass >> evaluate:
	receiver { sz:0 Compiler class} Compiler
7 TopezPharoSession class >> evaluate:
	receiver { sz:0 TopezPharoSession} a TopezPharoSession
8 BlockClosure class >> on:do:
	receiver { sz:2 BlockClosure} [result := Compiler evaluate: aString]
9 TopezPharoSession class >> evaluate:
	receiver { sz:0 TopezPharoSession} a TopezPharoSession
10 BlockClosure class >> newProcess
	receiver { sz:3 BlockClosure} [[result := Compiler evaluate: aString] on: Error , Halt do: [:ex | result := ex asTopezProxy. result client at: #process put: Processor activeProcess. semaphore signal. Processor activeProcess suspend]. semaphore signal]'