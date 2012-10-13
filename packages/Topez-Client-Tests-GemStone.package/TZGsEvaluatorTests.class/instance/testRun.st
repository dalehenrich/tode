testing
testRun
    | result x |
    result := self evaluator
        evaluate: 'run';
        evaluate: '3 + 4';
        evaluate: '%'.
    self assert: (x := result asString) = '[58 sz:0 cls: 74241 SmallInteger] 7'