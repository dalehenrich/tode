tests
testListReferences
    | result x |
    result := self runListReferences.
    self
        assert:
            (x := result asString)
                =
                    'TZProxyGemStone
TZProxyNative
TZProxyNotification
   TZProxyBreakpoint
   TZProxyError'