as yet unclassified
formatOnAccept
  formatOnAccept ifNil: [ ^ theEditorSpec topez enableFormatting ].
  ^ formatOnAccept