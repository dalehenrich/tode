accessing
classDefinitionNamed: aClassName
  ^ TDClassDefinition new
    appEnv: self appEnv;
    className: aClassName;
    yourself