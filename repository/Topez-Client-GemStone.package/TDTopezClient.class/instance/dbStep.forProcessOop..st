as yet unclassified
dbStep: level forProcessOop: processOop
  ^ self
    handleDebugExceptionsDuring: [ self session stepWith: (self session asOopType: processOop) level: level ]