accessing
classDefinitionNamed: aClassName
  ^ TDClassDefinition new
    username: self username;
    className: aClassName;
    yourself