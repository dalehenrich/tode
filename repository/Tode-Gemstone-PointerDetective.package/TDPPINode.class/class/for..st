instance creation
for: anObject
  ^ self new
    oop: anObject asOop;
    className: anObject class name;
    yourself