standard tests
runHaltUpUpDownWhere
    self pushPrintBlocks.
    ^ self evaluator
        evaluate:
            'run
1 halt
%
up
up
down
where
'