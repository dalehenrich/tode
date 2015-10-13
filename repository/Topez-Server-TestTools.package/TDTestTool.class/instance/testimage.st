as yet unclassified
testimage
  "test image"

  | label |
  label := 'Image Test Suite'.
  ^ self
    doTestForBlock: [ 
      | suite |
      suite := TestCase suite.
      suite name: label , suite ]
    label: label