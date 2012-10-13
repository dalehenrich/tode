standard tests
runListClassSelectors
    self pushPrintBlocks.
    ^ self evaluator
        evaluate:
            'set class TZHeaderObject
list cselectors'