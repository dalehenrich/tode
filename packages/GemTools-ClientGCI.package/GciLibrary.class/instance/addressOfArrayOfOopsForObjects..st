Wrapper
addressOfArrayOfOopsForObjects: anArray
  | oopSize address bytes |
  oopSize := self sizeInBytesOfOop.
  address := ExternalAddress gcallocate: anArray size * oopSize.
  bytes := ByteArray new: oopSize.
  Transcript
    cr;
    show: 'GciLibrary>>addressOfArrayOfOopsForObjects: ' , anArray size printString.
  1 to: anArray size do: [ :i | 
    | k |
    k := (i - 1) * oopSize.
    Transcript
      cr;
      tab;
      show: (anArray at: i) printString.
    self put: (self oopFor: (anArray at: i)) in: bytes.
    1 to: oopSize do: [ :j | address byteAt: k + j put: (bytes byteAt: j) ] ].
  ^ address