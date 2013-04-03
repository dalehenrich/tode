tests
testListSubclasses
    | result x |
    result := self runListSubclasses.
    self
        assert:
            (x := result asString)
                =
                    'TZProxyGemStone
TZProxyNative
TZProxyNotification
   TZProxyBreakpoint
   TZProxyError'