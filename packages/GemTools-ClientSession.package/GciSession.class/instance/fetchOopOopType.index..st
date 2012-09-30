public gci calls
fetchOopOopType: anOopType index: index
    self setSession.
    ^ self library oopTypeFromInteger: (self library apiGciFetchOop: (self asOopType: anOopType) a: index)