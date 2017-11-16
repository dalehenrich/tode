private
createStackNodeFor: aGsProcessOop exception: anExceptionOop session: aTDGsExternalSession
  | nodePath parentNode variable stack node sessionTempsNode |
  sessionTempsNode := topez sessionTempsNode.
  nodePath := sessionTempsNode printString , 'debug/' , aGsProcessOop asString.
  topez ensureChildrenExistIn: nodePath.
  parentNode := topez lookup: nodePath.
  stack := TDRemoteStack new
    processOop: aGsProcessOop;
    exceptionOop: anExceptionOop;
    session: aTDGsExternalSession;
    debugTool: self;
    yourself.
  node := stack
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: #'view'.
  node name: 'stack'.
  parentNode addChildNode: node.
  ^ node