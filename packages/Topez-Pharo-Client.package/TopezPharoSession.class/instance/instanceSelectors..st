api
instanceSelectors: classProxy
    | cl |
    cl := classProxy asTopezProxy native.
    ^ cl selectors sort
        collect: [ :each | 
            TZMethodElement new
                elementClass: classProxy;
                elementClassName: classProxy asTopezProxy proxyClassName;
                selector: each;
                category: (cl organization categoryOfElement: each asSymbol);
                setSource;
                yourself ]