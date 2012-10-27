standard tests
runEditInstance
    ^ self evaluator
        evaluate:
            'inspect
3+4
%
edit inspect'