as yet unclassified
testimage
  "test image"

  | label |
  label := 'Image Test Suite'.
  ^ self
    doTestForBlock: [ 
      | suite |
      suite := TestSuite named: 'Image Test Suite'.
      TestCase suite tests do: [ :s | suite addTests: s tests ].
      suite ]
    label: label