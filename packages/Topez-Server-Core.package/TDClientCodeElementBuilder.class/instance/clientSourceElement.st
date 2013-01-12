as yet unclassified
clientSourceElement
  ^ super clientSourceElement
    formatOnAccept: self formatOnAccept;
    formatOnDisplay: self formatOnDisplay;
    yourself