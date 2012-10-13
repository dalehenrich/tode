standard tests
runSetProject
    self pushPrintBlocks.
    ^ self evaluator
        evaluate:
            'level 0
set project Topez
set project'