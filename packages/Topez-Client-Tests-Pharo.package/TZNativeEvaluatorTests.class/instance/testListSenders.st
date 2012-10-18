tests
testListSenders
    | result x |
    result := self runListSenders .self
        assert:
            (x := result asString)
                =
                    'TZProxyObject class>>initializeClickBlocks
TopezEditor>>update:
TopezListEditor>>executeCommandForClickBlock:'