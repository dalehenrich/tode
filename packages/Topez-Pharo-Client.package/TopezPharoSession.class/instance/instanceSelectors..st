api
instanceSelectors: classProxy
    | cl |
    cl := classProxy asTopezProxy native.
    ^ cl selectors sort
        collect: [ :each | 
            TZMethodElement new
                proxyClass: classProxy;
                proxyClassName: classProxy asTopezProxy className;
                selector: each asString;
                category: (cl organization categoryOfElement: each asSymbol);
                setSource;
                yourself ]