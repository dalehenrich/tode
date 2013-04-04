tests
testListHierarchy
    | result x |
    self
        doNoError: [ 
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
            TZProxyError' ]