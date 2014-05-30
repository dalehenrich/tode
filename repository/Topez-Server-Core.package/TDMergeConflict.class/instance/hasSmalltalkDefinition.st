testing
hasSmalltalkDefinition
  | def |
  def := self conflict localDefinition.
  ^ def isClassDefinition | def isMethodDefinition