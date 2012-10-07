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
                    '[Array] anArray( #''executeAb...etc...
#1 [Symbol] executeAbortCmd:
#2 [Symbol] executeCommitCmd:
#3 [Symbol] executeRunCmd:'