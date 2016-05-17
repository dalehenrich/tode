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
  redirectCopy := redirectTarget copy.
  redirectTarget := nil.
  block := [ :doitString :accumulateObjIn | 
  | res |
  res := accumulateBlock value: doitString value: accumulateObjIn.
  self redirectObjIn: redirectCopy.
  res ].
  self accumulateBlocks add: block.
  self topezClientForwarder
    perform: #'accumulateTextAndServerDo:'
    with: block asOop