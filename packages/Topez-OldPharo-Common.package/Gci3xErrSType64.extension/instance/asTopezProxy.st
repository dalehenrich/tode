*topez-oldpharo-common
asTopezProxy
  | proxyNotificationClass proxy header named |
  proxyNotificationClass := ({ERR_Breakpoint.
  ERR_StackBreakpoint.
  ERR_CodeBreakpoint} includes: number)
    ifTrue: [ TZProxyBreakpoint ]
    ifFalse: [ 
      number = ERR_CompilerError
        ifTrue: [ TZProxyCompileError ]
        ifFalse: [ 
          number = 121000
            ifTrue: [ TZProxyTodeCommandError ]
            ifFalse: [ 
              number = ERR_Halt
                ifTrue: [ TZProxyHalt ]
                ifFalse: [ TZProxyError ] ] ] ].
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
    at: #'category'
      put:
        (TZProxyGemStone new header: (TZHeaderGemStone oop: self category asOop));
    at: #'number' put: self number asTopezProxy;
    at: #'context'
      put:
        (TZProxyGemStone new header: (TZHeaderGemStone oop: self context asOop));
    at: #'args'
      put:
        (self args asTopezProxy
            indexed: (self args collect: [ :each | each asTopezProxy ]);
            yourself);
    at: #'fatal' put: self fatal asTopezProxy;
    at: #'address' put: nil asTopezProxy.
  ^ proxy