as yet unclassified
clientListElement
  | clientListElement |
  clientListElement := TodeClientListElement new
    listBlockOop: self listBlock asOop;
    listAtBlockOop: self listAtBlock asOop;
    yourself.
  clientListElement clientElementOop: clientListElement asOop.
  ^ clientListElement