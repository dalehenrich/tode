compilation
classDefinitionCreationStringFor: aClass
  ^ self
    executeBlock: [ :classOop | 
      ((Object _objectForOop: classOop) perform: #'asCypressClassDefinition')
        perform: #'classDefinitionCreationString' ]
    with: aClass asOop