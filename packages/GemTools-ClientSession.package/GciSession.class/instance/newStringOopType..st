public gci calls
newStringOopType: aString
    self setSession.
    ^ self library oopTypeFromInteger: (self library apiGciNewString: aString)