as yet unclassified
debugNode: parentNode process: aGsProcess exception: anException
  | stack |
  stack := TDStack new
    process: aGsProcess;
    exception: anException;
    yourself.
  ^ stack asTDObjectNode: parentNode topez: parentNode topez self topez aspect: #'debug'