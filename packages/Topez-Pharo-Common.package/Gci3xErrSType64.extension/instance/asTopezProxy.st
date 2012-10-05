*topez-pharo-common
asTopezProxy
    | proxyNotificationClass proxy header named |
    proxyNotificationClass := ({ERR_Breakpoint.
    ERR_StackBreakpoint} includes: number)
        ifTrue: [ TZProxyBreakpoint ]
        ifFalse: [ TZProxyError ].
    proxy := proxyNotificationClass new.
    header := TZHeaderGemStone
        oop: self exceptionObj asOop
        indexedSize: 0
        namedSize: 6
        printString: self message
        classOop: nil
        className: nil.	"category number context args fatal address"
    proxy header: header.
    named := Dictionary new.
    proxy named: named.
    named
        at: #'category' put: (proxyNotificationClass new header: (TZHeaderGemStone oop: self category asOop));
        at: #'number' put: self number asTopezProxy;
        at: #'context' put: (proxyNotificationClass new header: (TZHeaderGemStone oop: self context asOop));
        at: #'args'
            put:
                (self args asTopezProxy
                        indexed: (self args collect: [ :each | each asTopezProxy ]);
                        yourself);
        at: #'fatal' put: self fatal asTopezProxy;
        at: #'address' put: nil asTopezProxy.
    ^ proxy