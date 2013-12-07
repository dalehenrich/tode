as yet unclassified
defaultAction
  | result forwarder clientForwarderOop selector args messageArgs|
  args := self tag args.
  clientForwarderOop := session asOopType: (args at: 1).
  forwarder := session clientObjectForwardedFrom: clientForwarderOop.
  forwarder == nil
    ifTrue: [ self resume: (Array with: #'resume' with: nil) ].
  selector := args at: 3.
  messageArgs := args at: 4.
  result := forwarder performFromServer: selector with: messageArgs using: session.
  self resume: (Array with: #'resume' with: result)