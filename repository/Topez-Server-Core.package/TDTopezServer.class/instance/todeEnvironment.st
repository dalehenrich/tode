environment
todeEnvironment
  "Answer the environment that should be used when working with tODE itself."

  "Use the applicationEnvironment if one is explicitly working with Smalltalk application classes (including the base class library)"

  ^ todeEnvironment ifNil: [ todeEnvironment := self defaultTodeEnvironment ]