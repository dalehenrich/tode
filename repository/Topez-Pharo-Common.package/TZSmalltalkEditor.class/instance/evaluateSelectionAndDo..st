do-its
evaluateSelectionAndDo: aBlock
    "Treat the current selection as an expression; evaluate it and invoke aBlock with the result."

    | result rcvr ctxt |
    self lineSelectAndEmptyCheck: [ ^ '' ].
    (model respondsTo: #'doItReceiver')
        ifTrue: [ 
            rcvr := model doItReceiver.
            ctxt := model doItContext ]
        ifFalse: [ rcvr := ctxt := nil ].
    result := self topez evaluate: self selectionForDoitAsStream in: ctxt to: rcvr.
self halt.
    ^ aBlock value: result