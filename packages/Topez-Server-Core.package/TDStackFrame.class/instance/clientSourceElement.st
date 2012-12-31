as yet unclassified
clientSourceElement
  ^ TodeClientMethodElement new
    clientElementOop;
    getBlock: self getBlock;
    setBlock: self setBlock;
    inClass: self inClass;
    sourceRange:
        {(self selectionRange begin).
          (self selectionRange end)};
    formatOnDisplay: false;
    yourself