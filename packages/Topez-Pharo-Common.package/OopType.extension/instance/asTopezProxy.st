*topez-pharo-common
asTopezProxy
    ^ TZProxyObject new header: (TZHeaderObject oop: self asOop)