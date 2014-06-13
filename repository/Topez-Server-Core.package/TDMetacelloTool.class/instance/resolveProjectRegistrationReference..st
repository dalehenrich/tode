private
resolveProjectRegistrationReference: projectName
  ^ (projectName beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: projectName ]
    ifFalse: [ self projectRegistrationFor: projectName ]