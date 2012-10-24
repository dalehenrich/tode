as yet unclassified
createStackFrameElementFor: aGsProcess at: aFrameIndex level: level
    | frameContents receiver cl homeMethod inClass selector method receiverElement methodElement |
    frameContents := aGsProcess _frameContentsAt: aFrameIndex.
    receiver := frameContents at: 10.
    cl := receiver class.
    method := frameContents at: 1.
    homeMethod := method homeMethod.
    inClass := homeMethod inClass.
    selector := homeMethod selector.
    methodElement := inClass == nil
        ifTrue: [ self elementCache add: TZExecutedCodeElement new ]
        ifFalse: [ self messageElementFor: inClass selector: selector messagePattern: '' ].
    receiverElement := self instanceElementFor: receiver limit: 0.
    ^ self elementCache
        add:
            (TZStackFrameElement new
                process: aGsProcess;
                methodElement: methodElement;
                receiverInstanceElement: receiverElement;
                frameIndex: aFrameIndex;
                elementClass: cl;
                elementClassName: cl name asString;
                yourself)