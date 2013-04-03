standard tests
runTopez
    self pushPrintBlocks.
    ^ self evaluator
        evaluate:
            'topez
3+4
%'