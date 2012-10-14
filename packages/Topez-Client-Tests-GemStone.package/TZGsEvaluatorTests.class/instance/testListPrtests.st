tests
testListPrtests
    | result x |
    result := self runListPrtests.
    self
        assert:
            (x := result asString)
                =
                    'TZClientTests
   TZEvaluatorEditTests
   TZEvaluatorTests
TZSTONTests'