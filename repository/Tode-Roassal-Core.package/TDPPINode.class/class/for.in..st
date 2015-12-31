instance creation
for: anObject in: aTDPPIReferencePaths
  ^ self new
    oop: anObject asOop;
    className: anObject class name;
    referencePaths: aTDPPIReferencePaths;
    yourself