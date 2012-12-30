as yet unclassified
clientListElement
  | clientListElement |
  clientListElement := TodeClientListElement new
    listBlockOop: self listBlock asOop;
    itemSelectedBlockOop: self itemSelectedBlock asOop;
    yourself.
  clientListElement clientElementOop: clientListElement asOop.
  ^ clientListElement