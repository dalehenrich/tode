test coding
testSetCategory
    | category x currentCategory |
    self pushPrintBlocks.
    category := 'testing'.
    self doNoError: [ self topez setCategory: category ].
    currentCategory := self topez currentCategory.
    self
        assert:
            (x := currentCategory printString)
                =
                    '[String] testing
#1 [SmallInteger] 116
#2 [SmallInteger] 101
#3 [SmallInteger] 115
#4 [SmallInteger] 116
#5 [SmallInteger] 105
#6 [SmallInteger] 110
#7 [SmallInteger] 103
'