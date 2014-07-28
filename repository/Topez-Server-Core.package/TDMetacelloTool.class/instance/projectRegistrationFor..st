private
projectRegistrationFor: projectName
  ^ self projectRegistrationDefinitionMap
    at: projectName
    ifAbsent: [ self error: 'Project named ' , projectName printString , ' not found.' ]