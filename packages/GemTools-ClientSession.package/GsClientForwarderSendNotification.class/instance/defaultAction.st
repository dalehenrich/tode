as yet unclassified
defaultAction
  | args result forwarder clientForwarderOop selector argsOop argsSize |
  Transcript
    cr;
    show: 'GsClientForwarderSendNotification>>defaultAction'.
  args := self tag args.
  clientForwarderOop := session asOopType: (args at: 1).
  forwarder := session clientObjectForwardedFrom: clientForwarderOop.
  self halt.
  forwarder == nil
    ifTrue: [ self resume: (Array with: #'resume' with: nil) ].
  Transcript
    cr;
    tab;
    show: 'args size: ' , args size printString.
  args size == 4
    ifTrue: [ 
      selector := args at: 3.
      argsOop := session asOopType: (args at: 4).
      result := forwarder performFromServer: selector with: argsOop using: session ]
    ifFalse: [ 
      "optimized for handling changed: message forwarding"
      selector := args at: 3.
      args size == 6
        ifTrue: [ 
          argsOop := session asOopType: (args at: 6).
          result := forwarder performFromServer: selector withArg: argsOop using: session ]
        ifFalse: [ 
          argsOop := session asOopType: (args at: 4).
          argsSize := args at: 5.
          result := forwarder
            performFromServer: selector
            with: argsOop
            argCount: argsSize
            using: session ] ].
  self resume: (Array with: #'resume' with: result)