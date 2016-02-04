private
projectRegistrationFor: projectName ifAbsent: absentBlock
  ^ self projectRegistrationDefinitionMap at: projectName ifAbsent: absentBlock