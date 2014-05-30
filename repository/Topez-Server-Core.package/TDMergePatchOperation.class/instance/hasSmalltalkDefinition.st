testing
hasSmalltalkDefinition
  | def |
  def := self operation definition.
  ^ def isClassDefinition | def isMethodDefinition