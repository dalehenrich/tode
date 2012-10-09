accessing
topezClient
    topezClient
        ifNil: [ 
            | windowId |
            topezClient := self topezClientClass new.
            windowId := topezClient windowNamed: #'evaluator'.
            topezClient status
                windowAt: windowId put: self evaluatorWindow;
                currentWindowId: windowId + 1.
            self initTopezClient ].
    ^ topezClient