standard tests
runHalt
    self pushPrintBlocks.
    ^ self evaluator
        evaluate:
            'run
1 halt
%'