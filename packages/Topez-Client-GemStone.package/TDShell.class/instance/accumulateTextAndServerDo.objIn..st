evaluator engine
accumulateTextAndServerDo: serverBlockOop objIn: objInOop
  | messageSend |
  messageSend := TZGsMessageSend new
    topez: self topezClient;
    receiver: self topezClient topezServerProxy;
    selector: 'serverTextDo:with:objIn:';
    arguments: #();
    transform: #'native' -> nil.
  self
    accumulateTextAndDo: [ :doitStream | 
      messageSend
        valueWithArguments:
          {(TZHeaderGemStone oop: serverBlockOop).
          (doitStream contents).
          (TZHeaderGemStone oop: objInOop)} ].
  ^ nil