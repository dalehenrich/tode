tests
testListReferences
    | result x |
    result := self runListReferences.
    self
        assert:
            (x := result asString)
                =
                    'TopezEditor>>update:
TopezListEditor>>executeCommandForClickBlock:'