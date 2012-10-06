testing
testRun
    | result x |
    result := self evaluator
        evaluate: 'run';
        evaluate: '3 + 4';
        evaluate: '%'.
    self
        assert:
            (x := result asString)
                =
                   '{ sz:0 SmallInteger} 7
'