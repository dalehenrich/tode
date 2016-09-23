compilation
compile: sourceString inClass: aClass classified: methodProtocol
  ^ self
    compile: sourceString
    inClassOop: aClass asOop
    classified: methodProtocol