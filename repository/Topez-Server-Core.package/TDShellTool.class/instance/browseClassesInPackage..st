browse
browseClassesInPackage: packageName
  | block pattern |
  block := [ 
  | list |
  list := self findPackageDefinitionsExact: packageName ].
  ^ self browseClassesBlock: block label: 'Classes in package ' , packageName