tests
testListHierarchy
    | result x |
    result := self runListHierarchy.
    self
        assert:
            (x := result asString)
                =
                    'Object
   TZObject
      TZProxyObject
         TZProxyGemStone
         TZProxyNative
         TZProxyNotification
            TZProxyBreakpoint
            TZProxyError'