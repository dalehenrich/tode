accessing
topez
    topez
        ifNil: [ 
            | windowId |
            topez := self topezClientClass new.
            windowId := topez windowIdNamed: #'evaluator'.
            topez status
                windowAt: windowId put: self evaluatorWindow;
                currentWindowId: windowId + 1.
            self initTopezClient ].
    ^ topez