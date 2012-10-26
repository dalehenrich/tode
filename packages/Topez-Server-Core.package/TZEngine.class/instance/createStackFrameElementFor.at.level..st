as yet unclassified
createStackFrameElementFor: aGsProcess at: aFrameIndex level: level
    | frameContents receiver cl homeMethod inClass selector method receiverElement methodElement contextArray |
    frameContents := aGsProcess _frameContentsAt: aFrameIndex.
    receiver := frameContents at: 10.
    cl := receiver class.
    method := frameContents at: 1.
    homeMethod := method homeMethod.
    inClass := homeMethod inClass.
    selector := homeMethod selector.
    methodElement := inClass == nil
        ifTrue: [ 
            self elementCache
                add:
                    (TZExecutedCodeElement new
                        source: method sourceString;
                        yourself) ]
        ifFalse: [ self frameMethodElementFor: inClass selector: selector ].
    self
        calculateSourceRangeFor: methodElement
        frameIndex: aFrameIndex
        ipOffset: (frameContents at: 2)
        in: method
        for: aGsProcess.
    methodElement methodForBlock: method isMethodForBlock.
    receiverElement := self createInstanceElementFor: receiver label: '' indent: 0.
    contextArray := Array new.
    self createContextElementsFrom: frameContents indent: 0 into: contextArray.
    self elementCache add: contextArray.
    ^ self elementCache
        add:
            (TZStackFrameElement new
                process: aGsProcess;
                methodElement: methodElement;
                receiverInstanceElement: receiverElement;
                contextInstanceElement: contextArray;
                frameIndex: aFrameIndex;
                elementClass: cl;
                elementClassName: cl name asString;
                yourself)