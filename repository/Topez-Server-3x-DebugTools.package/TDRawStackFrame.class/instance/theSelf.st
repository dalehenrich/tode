accessing
theSelf
  ^ self frameSelf ifNil: [ self argOrTempNamed: 'self' ifAbsent: [  ] ]