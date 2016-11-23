as yet unclassified
homeMethod
  ^ (self frameContents at: 7) ifNil: [ self method homeMethod ]