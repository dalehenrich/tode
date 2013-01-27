evaluator engine
accumulateTextAndServerDo: serverBlockOop
  | messageSend |
  messageSend := TZGsMessageSend new
    topez: self topezClient;
    receiver: self topezClient topezServerProxy;
    selector: 'serverTextDo:with:';
    arguments: #();
    transform: #'native' -> nil.
  self
    accumulateTextAndDo: [ :doitStream | 
      messageSend
        valueWithArguments:
          {(TZHeaderGemStone oop: serverBlockOop).
          (doitStream contents)} ].
  ^ nil