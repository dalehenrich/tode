as yet unclassified
windowIsClosingBlock
  ^ [ :listElement | 
  Transcript
    cr;
    show: 'windowIsClosing ' , self objectPrintString.
  self object terminateProcess ]