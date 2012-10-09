testing
testListSelectors
    | result x |
    result := self evaluator
        evaluate: 'set class TZClientTests';
        evaluate: 'list selectors'.
    self
        assert:
            (x := result asString)
                =
                    'defaultSessionDescription
popPrintBlocks
pushPrintBlocks
sessionDescription
sessionDescription:
tearDown'