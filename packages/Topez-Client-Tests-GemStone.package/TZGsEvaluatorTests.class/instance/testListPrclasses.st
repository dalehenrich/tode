tests
testListPrclasses
    | result x |
    self
        doNoError: [ 
            result := self runListPrclasses.
            self
                assert:
                    (x := result asString)
                        =
                            'Object
   SmallInteger
   String
   Text
   TZBlockStackDictionary
   TZElement
      TZClassElement
      TZSourceElement
         TZDoItElement
            TZTextElement
         TZMethodElement
            TZMessageElement
   TZEngine
   TZEvaluator
   TZLister
   TZObject
      TZHeaderObject
         TZHeaderGemStone
         TZHeaderNative
      TZProxyObject
         TZProxyGemStone
         TZProxyNative
         TZProxyNotification
            TZProxyBreakpoint
            TZProxyError
   TZStack
   TZStackFrame
   TZStonMapWriter
   TZSTONTests
   TZStonWriter
   TZTopez
   TZTopezCmd
      TZTopezAbortCmd
      TZTopezCommitCmd
      TZTopezContinueCmd
      TZTopezRunCmd
   TZTopezNotification
      TZTopezBreakpointNotification
      TZTopezErrorNotification
   TZTopezOptions
   TZTopezStatus' ]