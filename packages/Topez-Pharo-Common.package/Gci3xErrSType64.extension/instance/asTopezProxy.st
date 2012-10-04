*topez-pharo-common
asTopezProxy
    | proxyNotificationClass |
    proxyNotificationClass := ({ERR_Breakpoint.
    ERR_StackBreakpoint} includes: number)
        ifTrue: [ TZProxyBreakpoint ]
        ifFalse: [ TZProxyError ].
    ^ proxyNotificationClass new
        body: self;
        yourself