synthetic fields
thisContext
  ^ thisContext ifNil: [ thisContext := TDThisContext new
        stack: self stack;
        frameIndex: self frameIndex;
        parentFrame: self;
        yourself ]