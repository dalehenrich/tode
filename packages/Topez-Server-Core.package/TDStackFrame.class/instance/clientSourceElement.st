as yet unclassified
clientSourceElement
  | clientElement |
  clientElement := TodeClientMethodElement new
    getBlockOop: self getBlock asOop;
    setBlockOop: self setBlock asOop;
    inClassOop: (self inClass ifNotNil: [ self inClass asOop ]);
    sourceRange:
        {(self selectionRange first).
          (self selectionRange last)};
    yourself.
  clientElement clientElementOop: clientElement asOop.
  ^ clientElement