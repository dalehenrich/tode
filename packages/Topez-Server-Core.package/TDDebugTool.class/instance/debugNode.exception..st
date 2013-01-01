as yet unclassified
debugNode: aGsProcess exception: anException
  | stack |
  stack := TDStack new
    process: aGsProcess;
    exception: anException;
    yourself.
  ^ stack asTDObjectNode: self topez aspect: #'debug'