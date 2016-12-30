synthetic fields
thisContext
  ^ thisContext ifNil: [ thisContext := TDThisContext new
        stack: self stack;
        frameIndex: self frameIndex;
        frameContents: self frameContents;
        parentFrame: self;
        yourself ]