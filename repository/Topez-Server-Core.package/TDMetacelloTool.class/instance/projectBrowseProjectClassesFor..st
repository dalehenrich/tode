project api
projectBrowseProjectClassesFor: registration
  | block |
  block := [ registration classDefinitions ].
  ^ (self topez toolInstanceFor: 'browse')
    browseClassesBlock: block
    label: 'Classes in ' , registration projectName