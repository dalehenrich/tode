private
projectRegistrationFor: projectName
  ^ self
    projectRegistrationFor: projectName
    ifAbsent: [ self error: 'Project named ' , projectName printString , ' not found.' ]