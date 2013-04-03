standard tests
runSetClass
    self pushPrintBlocks.
    ^ self evaluator
        evaluate:
            'level 0
set class Object
set class'