as yet unclassified
receiver
  (self frameContents at: 8) ifNotNil: [ :frameSelf | ^ frameSelf ].
  ^ self frameContents at: 10