as yet unclassified
assert: aString includesSubstring: subString
  "Pharo1.4/Pharo2.0 compat"

  self
    assert:
      ((aString respondsTo: #'includesSubstring:')
        ifTrue: [ aString includesSubstring: subString ]
        ifFalse: [ aString includesSubString: subString ])