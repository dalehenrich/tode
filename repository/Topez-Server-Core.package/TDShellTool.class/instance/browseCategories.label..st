browse
browseCategories: classCategoryDefinitions label: label
  | block |
  block := [ 
  TDUserDefinitionList new
    definitionList: classCategoryDefinitions;
    windowLocation: #'classCategories';
    yourself ].
  (self topez toolInstanceFor: 'browse')
    browseDefinitionListBlock: block
    selectedIndex: 0
    label: label