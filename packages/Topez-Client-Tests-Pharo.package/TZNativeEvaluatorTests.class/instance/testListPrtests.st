testing
testListPrtests
    | result x |
    result := self runListPrtests.
    self
        assert:
            (x := result asString)
                =
                   'TZClientTests
   TZClientTopezTests
   TZEvaluatorTests
      TZGsEvaluatorTests
      TZNativeEvaluatorTests
TZSTONTests'