tests
testListSenders
    | result x |
    result := self runListSenders .self
        assert:
            (x := result asString)
                =
                    'TZProxyObject class>>initializeClickBlocks
TopezCodeEditor>>selectSourceClass
TopezEditor>>update:
TopezListEditor>>executeCommandForClickBlock:'