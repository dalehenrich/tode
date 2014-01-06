private
createStackNodeFor: aGsProcess
  | nodePath parentNode variable stack node sessionTempsNode |
  sessionTempsNode := topez sessionTempsNode.
  nodePath := sessionTempsNode printString , 'debug/'
    , aGsProcess asOop asString.
  topez ensureChildrenExistIn: nodePath.
  parentNode := topez lookup: nodePath.
  stack := TDStack new
    process: aGsProcess;
    yourself.
  node := stack
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: #'view'.
  node name: 'stack'.
  parentNode addChildNode: node.
  ^ node