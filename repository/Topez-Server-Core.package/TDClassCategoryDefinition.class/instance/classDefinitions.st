as yet unclassified
classDefinitions
  | defs categoryDict classes |
  categoryDict := ClassOrganizer cachedOrganizer categories.
  classes := categoryDict at: self categoryName ifAbsent: [ ^ #() ].
  defs := classes collect: [ :cl | cl asTDClassDefinition ].
  ^ defs