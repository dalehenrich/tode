as yet unclassified
clsremove: oldName
  (Smalltalk classNamed: oldName) ifNotNil: [ :cls | cls removeFromSystem ].
  self topez resetAllGlobalNames