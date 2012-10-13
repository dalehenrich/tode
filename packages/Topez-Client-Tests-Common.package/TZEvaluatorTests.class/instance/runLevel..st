standard tests
runLevel: anInteger
    self pushPrintBlocks.
    ^ self evaluator
        evaluate:
            'level ' , anInteger printString
                ,
                    '
run
{ 1. 2. {''a''->{1. 2. 3.}. Object new}. 4}
%'