as yet unclassified
differentMethodCreated: selector
  | newDef |
  newDef := (TDMethodDefinition
    className: self theClass name
    isMeta: self theBehavior isMeta
    selector: selector asSymbol)
    appEnv: self object appEnv;
    yourself.
  self object: newDef