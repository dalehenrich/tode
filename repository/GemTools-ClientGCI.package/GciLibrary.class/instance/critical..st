Wrapper
critical: aBlock
  ^ self mutex critical: [ aBlock value: self ]