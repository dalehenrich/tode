as yet unclassified
beditList: pathReference regex: regex replacementString: replacementString
  | definitions |
  definitions := self resolveAtPathReference: pathReference.
  ^ self
    beditDefinitions: definitions
    regex: regex
    replacementString: replacementString