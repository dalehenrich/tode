browse
browseClassesInProject: projectName
  | block |
  block := [ 
  | list |
  list := self findProjectClassDefinitionsExact: projectName ].
  ^ self browseClassesBlock: block label: 'Classes in project' , projectName