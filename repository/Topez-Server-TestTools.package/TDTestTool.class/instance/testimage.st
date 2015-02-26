as yet unclassified
testimage
  "test image"

  | suite |
  suite := TestCase suite.
  suite name: 'Image Test Suite'.
  ^ self doTestFor: suite