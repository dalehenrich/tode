tests
testListHierarchy
    | result x |
    result := self runListHierarchy.
    self
        assert:
            (x := result asString)
                =
                   'ProtoObject
   Object
      TZObject
         TZProxyObject
            TZProxyGemStone
            TZProxyNative
            TZProxyNotification
               TZProxyBreakpoint
               TZProxyError'