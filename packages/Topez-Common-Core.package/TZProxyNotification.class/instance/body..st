initialization
body: aGci3xErrSType64
    "fabricate the proxy"

    header := TZHeaderObject
        oop: aGci3xErrSType64 exceptionObj asOop
        indexedSize: 0
        namedSize: 6
        printString: aGci3xErrSType64 message
        classOop: nil
        className: nil.	"category number context args fatal address"
    named := Dictionary new.
    named
        at: #'category' put: (self class new header: (TZHeaderObject oop: aGci3xErrSType64 category asOop));
        at: #'number' put: aGci3xErrSType64 number asTopezProxy;
        at: #'context' put: (self class new header: (TZHeaderObject oop: aGci3xErrSType64 context asOop));
        at: #'args'
            put:
                (aGci3xErrSType64 args asTopezProxy
                        indexed: (aGci3xErrSType64 args collect: [ :each | each asTopezProxy ]);
                        yourself);
        at: #'fatal' put: aGci3xErrSType64 fatal asTopezProxy;
        at: #'address' put: nil asTopezProxy