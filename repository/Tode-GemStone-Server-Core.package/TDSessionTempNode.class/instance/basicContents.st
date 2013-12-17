as yet unclassified
basicContents
  contents ifNil: [ contents := TransientValue value: Dictionary new ].
  contents value ifNil: [ contents value: Dictionary new ].
  ^ contents value