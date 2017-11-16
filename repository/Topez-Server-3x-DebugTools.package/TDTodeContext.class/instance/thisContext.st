synthetic fields
thisContext
  ^ thisContext ifNil: [ thisContext := self thisContextClass new
        stack: self stack;
        frameIndex: self frameIndex;
        frameContents: self frameContents;
        parentFrame: self;
        yourself ]