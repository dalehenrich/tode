api
classElementForClass: classProxy
    | cl |
    cl := classProxy asTopezProxy native.
    ^ TZClassElement new
        proxyClass: cl;
        proxyClassName: cl name asString;
        indent: 0;
        inExtensionClassList: false;
        yourself