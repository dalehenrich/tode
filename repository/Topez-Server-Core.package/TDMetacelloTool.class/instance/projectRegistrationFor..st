private
projectRegistrationFor: projectName
  | shellTool |
  shellTool := self topez toolInstanceFor: 'find'.
  ^ shellTool findProjectRegistrationExact: projectName