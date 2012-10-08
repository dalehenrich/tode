as yet unclassified
instanceSelectors: classProxy
    | listOop |
    listOop := self rawInSession: [ :sess | sess receiverNB: classProxy performNoDebug: 'selectors' withArgs: #() ].
    listOop := self rawInSession: [ :sess | sess receiverNB: listOop performNoDebug: 'sort' withArgs: #() ].
    ^ self proxyForOop: listOop level: 1