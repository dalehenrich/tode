as yet unclassified
classSelectors: classProxy
    | listOop classOop |
    classOop := self rawInSession: [ :sess | sess receiverNB: classProxy performNoDebug: 'class' withArgs: #() ].
    listOop := self rawInSession: [ :sess | sess receiverNB: classOop performNoDebug: 'selectors' withArgs: #() ].
    ^ self proxyForOop: listOop level: 1