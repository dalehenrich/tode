test debugging
testContinueReplacingTopOfStack
    | result newTopOfStack |
    self
        do: [ :tpz | 
            tpz
                run: self debugTestClassDefinition;
                setClass: 'TestStep';
                setCategory: 'tests';
                method: self continueTestCallMethod;
                method: self continueTestDivideBy0Method;
                yourself ].
    newTopOfStack := self runNoError: '{134. 1}'.
    result := self runExpectingError: 'TestStep new divideBy0Method'.
    result := self doNoError: [ self topez continueWith: result context replaceTopOfStackWith: newTopOfStack ].
    self assert: newTopOfStack oop = result oop