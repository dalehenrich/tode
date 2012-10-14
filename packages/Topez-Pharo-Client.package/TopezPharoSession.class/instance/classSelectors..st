api
classSelectors: classProxy
    | cl |
    cl := classProxy asTopezProxy native class.
    ^ cl selectors sort
        collect: [ :each | 
            TZMethodElement new
                isMeta: true;
                proxyClass: classProxy;
                proxyClassName: classProxy asTopezProxy proxyClassName;
                selector: each;
                category: (cl organization categoryOfElement: each asSymbol);
                setSource;
                yourself ]