standard tests
runListSelectors
    self pushPrintBlocks.
    ^ self evaluator
        evaluate:
            'set class TZHeaderObject
list selectors'