as yet unclassified
itemSelected: topez
  (topez toolInstanceFor: 'browse')
    browseClassHierarchy: self asTDClassDefinition
    label: 'Hierarchy of ' , self className asString.
  ^ nil