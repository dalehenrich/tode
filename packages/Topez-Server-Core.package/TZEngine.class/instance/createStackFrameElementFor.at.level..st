as yet unclassified
createStackFrameElementFor: aGsProcess at: aFrameIndex level: level
    | frameContents receiver cl homeMethod inClass selector method receiverElement methodElement |
    frameContents := aGsProcess _frameContentsAt: aFrameIndex.
    receiver := frameContents at: 10.
    cl := receiver class.
    method := frameContents at: 1.
    homeMethod := method homeMethod.
    inClass := homeMethod inClass.
    selector := homeMethod selector.	"getting hung up when the stack entry is not really a method but for executed code (anonymous method) or for a block ... (look at senders of isMethodForBlock to untangle ... stakc report and stack to level should help as well as OBStack framt ... I think that the method can be found, but we may have to keep some extra state around (perhaps in context element) that tells us whether we are a nested block/context or not ... really need pc data for calculating where in method we're at for highlighting"
    methodElement := self methodElementForClass: inClass theNonMetaClass isMeta: inClass isMeta selector: selector.
    receiverElement := self instanceElementFor: receiver level: level.
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