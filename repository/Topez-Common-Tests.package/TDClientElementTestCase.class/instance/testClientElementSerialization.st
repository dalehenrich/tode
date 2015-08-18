as yet unclassified
testClientElementSerialization
  "only certain instance variables should retain their value going across the wire. See #excludedInstVarNames"

  | clientClientElement serverClientElement stonString serializer ivs |
  serverClientElement := TodeClientElement new
    topez: #'topez';
    theObject: #'theObject';
    clientElementOop: #'clientElementOop';
    aspect: #'aspect';
    editorAspectSelector: #'editorAspectSelector';
    editorWindowLabel: #'editorWindowLabel';
    editorWindowId: #'editorWindowId';
    editorWindowLocation: #'editorWindowLocation';
    editorWindowName: #'editorWindowName';
    menuActionBlockOop: #'menuActionBlockOop';
    menuActionSpec: #'menuActionSpec';
    windowIsClosingBlockOop: #'windowIsClosingBlockOop';
    windowBuilder: #'windowBuilder';
    yourself.
  serverClientElement blockCache add: #'blockCacheEntry'.
  serializer := TodeObjectSerializer preferredSerializer.
  stonString := serializer toString: serverClientElement.
  clientClientElement := serializer fromString: stonString.
  ivs := TodeClientElement allInstVarNames asSet.
  ivs removeAllFoundIn: #(#'usePersistentClientElementCache' #'timestamp').
  ivs
    do: [ :iv | 
      | ivName |
      ivName := iv asSymbol.
      (serverClientElement excludedInstVarNames includes: ivName)
        ifTrue: [ self assert: (clientClientElement perform: ivName) isEmptyOrNil ]
        ifFalse: [ self assert: (clientClientElement perform: ivName) == ivName ] ]