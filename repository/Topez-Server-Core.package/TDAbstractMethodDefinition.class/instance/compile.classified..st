compiling
compile: source classified: methodProtocol
  ^ self appEnv
    compile: source
    inBehavior: self theBehavior
    classified: methodProtocol