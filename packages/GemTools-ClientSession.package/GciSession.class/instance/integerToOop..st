public gci calls
integerToOop: anInteger
    self setSession.
    ^ self library oopTypeFromInteger: (self library apiGciI64ToOop: anInteger)