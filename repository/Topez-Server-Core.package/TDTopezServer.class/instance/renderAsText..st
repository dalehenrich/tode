accessing
renderAsText: anObject
  | displayPolicy textStream |
  (anObject isKindOf: Text)
    ifTrue: [ ^ anObject ].
  textStream := TextStream on: Text new.
  displayPolicy := TDDisplayPolicy new
    stream: textStream;
    yourself.
  self display: anObject on: displayPolicy.
  ^ textStream contents