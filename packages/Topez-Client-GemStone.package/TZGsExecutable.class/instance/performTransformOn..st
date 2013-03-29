accessing
performTransformOn: anOoptype
  self transform key == #'ston'
    ifTrue: [ 
      | stonString |
      stonString := self session
        receiverNB: self topez topezServerProxy
        perform: #'toString:'
        withArgs: {anOoptype}
        envId: self environmentId.
      ^ (STONReader on: stonString readStream) next ].
  self transform key == #'native'
    ifTrue: [ ^ self session library localFor: anOoptype ].
  ^ anOoptype	"self transform key == #'raw'"