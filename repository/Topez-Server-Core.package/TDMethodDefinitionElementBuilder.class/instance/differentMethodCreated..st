as yet unclassified
differentMethodCreated: selector
  | newDef |
  newDef := (TDMethodDefinition
    className: self theClass name
    isMeta: self theBehavior isMeta
    selector: selector asSymbol)
    username: self object username;
    yourself.
  self object: newDef