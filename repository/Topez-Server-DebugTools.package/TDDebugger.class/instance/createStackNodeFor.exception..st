private
createStackNodeFor: aGsProcess exception: anException
  | nodePath parentNode variable stack node sessionTempsNode |
  sessionTempsNode := topez sessionTempsNode.
  nodePath := sessionTempsNode printString , 'debug/'
    , aGsProcess asOop asString.
  topez ensureChildrenExistIn: nodePath.
  parentNode := topez lookup: nodePath.
  stack := TDStack new
    process: aGsProcess;
    exception: anException;
    debugTool: self;
    yourself.
  node := stack
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: #'view'.
  node name: 'stack'.
  parentNode addChildNode: node.
  ^ node