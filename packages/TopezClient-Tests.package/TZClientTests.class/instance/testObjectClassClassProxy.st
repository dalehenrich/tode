test proxy
testObjectClassClassProxy
    | result x |
    self topez commandOptions level: 0.
    result := self runNoError: 'Object class class'.
    self
        assert:
            (x := result printString)
                =
                    '[146177 sz:19 cls: 247297 Metaclass3 class] Metaclass3
'