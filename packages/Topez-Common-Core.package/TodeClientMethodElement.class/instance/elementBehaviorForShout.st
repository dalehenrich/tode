as yet unclassified
elementBehaviorForShout
  "class oop should not be save ... maybe proxy code should use class name instead"

  self inClassOop ifNil: [ ^ nil ].
  elementBehaviorForShout
    ifNil: [ 
      Transcript
        cr;
        show: 'TodeClientMethodelement>>elementBehaviorForShout ' , self editorWindowLabel.
      elementBehaviorForShout := TZGemStoneProxyBehavior new
        behaviorOop: self inClassOop;
        allClassVarNames: self allClassVarNames;
        allInstVarNames: self allInstVarNames;
        allSharedPoolNames: self allSharedPoolNames;
        topez: self topez;
        yourself ].
  ^ elementBehaviorForShout