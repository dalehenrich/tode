as yet unclassified
browseClasses: classList
  | defs |
  defs := classList collect: [ :cls | TDClassDefinition className: cls theNonMetaClass name ].
  ^ defs edit: topez aspect: #'definitionList'