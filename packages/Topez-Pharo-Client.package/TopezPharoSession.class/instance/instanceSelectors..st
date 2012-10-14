api
instanceSelectors: classProxy
    | cl |
    cl := classProxy asTopezProxy native.
    ^ cl selectors sort
        collect: [ :each | 
            TZMethodElement new
                proxyClass: classProxy;
                proxyClassName: classProxy asTopezProxy proxyClassName;
                selector: each;
                category: (cl organization categoryOfElement: each asSymbol);
                setSource;
                yourself ]