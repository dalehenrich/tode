accessing
compile: sourceString classified: methodProtocol
  ^ self session
    compile: sourceString
    inClassOop: self inClassOop
    classified: methodProtocol