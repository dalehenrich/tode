tests
testListImplementors
    | result x |
    result := self runListImplementors.
    self
        assert:
            (x := result asString)
                =
                    'TZProxyGemStone
TZProxyNative
TZProxyNotification
   TZProxyBreakpoint
   TZProxyError'