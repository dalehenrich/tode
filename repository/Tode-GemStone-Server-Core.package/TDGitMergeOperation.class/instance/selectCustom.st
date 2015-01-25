as yet unclassified
selectCustom
  editDefinition ifNil: [ editDefinition := self selectedSource ].
  self selection: #'custom'