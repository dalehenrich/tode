public gci calls
compileMethod: sourceString class: class category: category compileFlags: compileFlags
    "compileFlags:
      0 - compile instance method
      1 - compile class method"

    ^ self
        compileMethod: sourceString
        class: class
        category: category
        symbolList: self library oopNil
        overrideSelector: self library oopNil
        compileFlags: compileFlags