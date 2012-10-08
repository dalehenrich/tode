testing
testListSelectors
    | result x |
    self pushPrintBlocks.
    result := self evaluator
        evaluate: 'set class TZEngine';
        evaluate: 'list selectors'.
    self
        assert:
            (x := result asString)
                =
                    'executeAbortCmd:
executeCommitCmd:
executeRunCmd:'