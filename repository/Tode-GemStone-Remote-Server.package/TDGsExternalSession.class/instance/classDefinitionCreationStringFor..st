compilation
classDefinitionCreationStringFor: aClass
  ^ self
    executeBlock: [ :classOop | 
      (Object _objectForOop: classOop) asCypressClassDefinition
        classDefinitionCreationString ]
    with: aClass asOop