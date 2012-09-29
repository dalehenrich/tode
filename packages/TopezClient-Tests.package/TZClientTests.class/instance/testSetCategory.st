test coding
testSetCategory
    | category x currentCategory |
    category := 'testing'.
    self doNoError: [ self topez setCategory: category ].
    currentCategory := self topez currentCategory.
    currentCategory displayOptions: (TZTopezOptions new displayOops: false).
    self
        assert:
            (x := currentCategory printString)
                =
                    '''testing''
#1 116
#2 101
#3 115
#4 116
#5 105
#6 110
#7 103
'