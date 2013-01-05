Wrapper
localFor: anOopType
  | res |
  Transcript
    cr;
    show: 'GciLibrary>>localFor: ' , anOopType printString , '...'.
  res := anOopType gciLocalForLibrary: self.
  Transcript show: 'DONE'.
  ^ res