testing
testListMethod
    | result x |
    result := self evaluator
        evaluate: 'set class TZEngine';
        evaluate: 'list method: executeRunCmd:'.
    self
        assert:
            (x := result asString withSqueakLineEndings)
                =
                    'executeRunCmd: aTZTopezRunCmd
   ^self class toString: aTZTopezRunCmd doit evaluate withOptions: aTZTopezRunCmd options'