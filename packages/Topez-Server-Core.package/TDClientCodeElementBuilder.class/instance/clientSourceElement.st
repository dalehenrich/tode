as yet unclassified
clientSourceElement
  "transitioning to server-side formatting, so disable client-side formatting"

  ^ super clientSourceElement
    formatOnAccept: false;
    formatOnDisplay: false;
    yourself