as yet unclassified
defaultAction
  | args result forwarder clientForwarderOop |
  Transcript
    cr;
    show: 'GsClientForwarderSendNotification>>defaultAction'.
  args := self tag args.
  clientForwarderOop := args at: 1.
  forwarder := session clientObjectForwardedFrom: clientForwarderOop.
  forwarder == nil
    ifTrue: [ self resume: (Array with: #'resume' with: nil) ].
  Transcript
    cr;
    tab;
    show: 'args size: ' , args size printString.
  args size == 4
    ifTrue: [ 
      | selector argsOop |
      selector := args at: 3.
      argsOop := args at: 4.
      result := forwarder performFromServer: selector with: argsOop using: session ]
    ifFalse: [ 
      | selector |
      "optimized for handling changed: message forwarding"
      selector := args at: 3.
      args size == 6
        ifTrue: [ result := forwarder performFromServer: selector withArg: (args at: 6) using: session ]
        ifFalse: [ 
          result := forwarder
            performFromServer: selector
            with: (args at: 4)
            argCount: (args at: 5)
            using: session ] ].	"ObjectLog add: #clientForwarderSend->{args. (args at: 3). args size.}."
  self resume: (Array with: #'resume' with: result)	"will not get here"