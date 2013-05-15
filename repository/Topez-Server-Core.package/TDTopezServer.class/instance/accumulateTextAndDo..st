accessing
accumulateTextAndDo: accumulateBlock
  | block redirectCopy |
  self evaluatingScript
    ifTrue: [ 
      self scriptActionStack
        add:
          {scriptInputStream.
          accumulateScriptText.
          [ :input :accumulateObjIn | 
          self exception: nil.
          accumulateBlock value: input value: accumulateObjIn ].
          redirectTarget}.
      scriptInputStream := WriteStream on: String new.
      accumulateScriptText := true.
      redirectTarget := nil.
      ^ self ].
  Transcript
    cr;
    show: 'redirectTarget: ' , redirectTarget printString.
  redirectCopy := redirectTarget copy.
  redirectTarget := nil.
  block := [ :doitString :objectIn | 
  | res |
  res := accumulateBlock value: doitString value: objectIn value.
  Transcript
    cr;
    show: 'redirecting: ' , redirectCopy printString.
  self redirectObjIn: redirectCopy.
  res ].
  self accumulateBlocks add: block.
  self topezClientForwarder accumulateTextAndServerDo: block asOop