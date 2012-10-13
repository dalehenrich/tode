standard tests
runSetPackage
    self pushPrintBlocks.
    ^ self evaluator
        evaluate:
            'level 0
set package Topez-Client-Tests-Common
set package'