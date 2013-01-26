as yet unclassified
dbContinue: processOop
  ^ self handleDebugExceptionsDuring: [ self session continue: (TZHeaderGemStone oop: processOop) ]