as yet unclassified
createStackNodeFor: exceptionProcess
  | nodePath parentNode stack node sessionTempsNode |
  sessionTempsNode := topez sessionTempsNode.
  nodePath := sessionTempsNode printString , 'debug/'
    , exceptionProcess asOop asString.
  topez ensureChildrenExistIn: nodePath.
  parentNode := topez lookup: nodePath.
  stack := TDStack new
    process: topez serverStatus exceptionProcess;
    exception: topez serverStatus exception;
    yourself.
  node := stack
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: #'view'.
  node name: 'stack'.
  parentNode addChildNode: node.
  ^ node