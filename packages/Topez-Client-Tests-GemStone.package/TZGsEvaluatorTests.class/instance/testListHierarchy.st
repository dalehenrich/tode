tests
testListHierarchy
    | result x |
    result := self runListHierarchy.
    self
        assert:
            (x := result asString)
                =
                    'TZProxyGemStone
TZProxyNative
TZProxyNotification
   TZProxyBreakpoint
   TZProxyError'