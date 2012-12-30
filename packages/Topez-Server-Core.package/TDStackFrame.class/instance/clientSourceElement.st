as yet unclassified
clientSourceElement
  ^ TodeClientMethodElement new
    clientElement;
    getBlock: self getBlock;
    setBlock: self setBlock;
    inClass: self inClass;
    sourceRange:
        {(self selectionRange first).
          (self selectionRange last)};
    formatOnDisplay: false;
    yourself