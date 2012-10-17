tests
testListClass
    | result x |
    result := self runListClass.
    self
        assert:
            (x := result asString)
                =
                    'TZPluggableListMorph
TZPluggableTextMorph
TZProxyObject
   TZProxyGemStone
   TZProxyNative
   TZProxyNotification
      TZProxyBreakpoint
      TZProxyError'