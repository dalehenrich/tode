as yet unclassified
testClientElementSerialization
  "only certain instance variables should retain their value going across the wire. See #excludedInstVarNames"

  | clientClientElement serverClientElement stonString |
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
    keyboardEventBlockOop: #'keyboardEventBlockOop';
    menuActionBlockOop: #'menuActionBlockOop';
    menuActionSpec: #'menuActionSpec';
    cmdKeyCodePoints: #'cmdKeyCodePoints';
    windowBuilder: #'windowBuilder';
    yourself.
  serverClientElement blockCache add: #'blockCacheEntry'.
  stonString := STON toString: serverClientElement.
  clientClientElement := STON fromString: stonString.
  TodeClientElement allInstVarNames
    do: [ :iv | 
      | ivName |
      ivName := iv asSymbol.
      (serverClientElement excludedInstVarNames includes: ivName)
        ifTrue: [ self assert: (clientClientElement perform: ivName) isEmptyOrNil ]
        ifFalse: [ self assert: (clientClientElement perform: ivName) == ivName ] ]