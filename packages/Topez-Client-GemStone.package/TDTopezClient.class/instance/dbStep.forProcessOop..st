as yet unclassified
dbStep: level forProcessOop: processOop
  ^ self handleDebugExceptionsDuring: [ self session stepWith: (TZHeaderGemStone oop: processOop) level: level ]