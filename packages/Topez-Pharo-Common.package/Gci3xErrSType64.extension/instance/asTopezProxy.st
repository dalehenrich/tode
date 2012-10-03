*topez-pharo-common
asTopezProxy
    ^ (number = ERR_Breakpoint
        ifTrue: [ TZProxyBreakpoint ]
        ifFalse: [ TZProxyError ]) new
        body: self;
        yourself