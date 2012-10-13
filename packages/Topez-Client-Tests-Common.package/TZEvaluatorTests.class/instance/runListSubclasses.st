standard tests
runListSubclasses
    ^ self evaluator
        evaluate:
            'set class TZProxyObject
list subclasses'