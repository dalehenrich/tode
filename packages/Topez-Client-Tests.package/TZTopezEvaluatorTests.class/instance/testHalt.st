testing
testHalt
    | result x |
    self pushPrintBlocks.
    result := self evaluator
        evaluate: 'run';
        evaluate: '1 halt';
        evaluate: '%'.
    self
        assert:
            (x := result asString)
                =
                    '[nil] a Halt occurred (error 2709)
1 AbstractException class >> _signalWith:		@6 line 25
'