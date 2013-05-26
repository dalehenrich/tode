accessing
library
  gciLibrary ifNil: [ gciLibrary := self sessionDescription  gciLibrary ].
  ^ gciLibrary