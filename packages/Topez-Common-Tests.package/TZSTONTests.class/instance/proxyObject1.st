private
proxyObject1
    ^ TZProxyGemStone new
        header:
                (TZHeaderGemStone
                        oop: 1
                        indexedSize: 1
                        namedSize: 1
                        printString: 'proxyObject1'
                        classOop: 21
                        className: 'ProxyObject1');
        named:
                (Dictionary new
                        at: 'iv1'
                            put:
                                (TZProxyGemStone new
                                        header:
                                                (TZHeaderGemStone
                                                        oop: 2
                                                        indexedSize: 0
                                                        namedSize: 0
                                                        printString: 'proxyObject2'
                                                        classOop: 22
                                                        className: 'ProxyObject2');
                                        yourself);
                        yourself);
        indexed:
                {(TZProxyGemStone new
                        header:
                                (TZHeaderGemStone
                                        oop: 3
                                        indexedSize: 0
                                        namedSize: 0
                                        printString: 'proxyObject3'
                                        classOop: 23
                                        className: 'ProxyObject3');
                        yourself)};
        yourself