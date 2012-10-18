tests
testListSenders
    | result x |
    result := self runListSenders self
        assert:
            (x := result asString)
                =
                    'TZProxyGemStone
TZProxyNative
TZProxyNotification
   TZProxyBreakpoint
   TZProxyError'