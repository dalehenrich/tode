test proxy
testObjectProxy
    | result x |
    self topez commandOptions level: 0.
    result := self runNoError: 'Object'.
    self
        assert:
            (x := result printString)
                =
                    '[72193 sz:19 cls: 206081 Object class] Object
'