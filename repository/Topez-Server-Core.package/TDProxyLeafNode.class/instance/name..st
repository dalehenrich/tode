as yet unclassified
name: aString
  self basicContents ifNotNil: [ self basicContents name: aString ].
  ^ super name: aString