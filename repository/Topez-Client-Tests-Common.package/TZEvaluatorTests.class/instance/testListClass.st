tests
testListClass
    | result x |
    result := self runListClass.
    self
        assert:
            (x := result asString)
                =
                    'TZProjectSpecElement
TZProxyObject
   TZProxyGemStone
   TZProxyNative
   TZProxyNotification
      TZProxyBreakpoint
      TZProxyError'