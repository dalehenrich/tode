tests
testListClass
    | result x |
    result := self runListClass.
    self
        assert:
            (x := result asString)
                =
                    'TZProxyBreakpoint
TZProxyError
TZProxyGemStone
TZProxyNative
TZProxyNotification
TZProxyObject'