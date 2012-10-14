testing
testListPrtests
    | result x |
    result := self runListPrtests.
    self
        assert:
            (x := result asString)
                =
                   'TZClientTests
   TZEvaluatorEditTests
      TZGsEvaluatorEditTests
      TZNativeEvaluatorEditTests
   TZEvaluatorTests
      TZGsEvaluatorTests
      TZNativeEvaluatorTests
   TZGsTopezApiTests
TZSTONTests'