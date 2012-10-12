api
classSelectors: classProxy
    | cl |
    cl := classProxy asTopezProxy native class.
    ^ cl selectors sort
        collect: [ :each | 
            TZMethodElement new
                isMeta: true;
                proxyClass: classProxy;
                proxyClassName: classProxy asTopezProxy className;
                selector: each asString;
                category: (cl organization categoryOfElement: each asSymbol);
                setSource;
                yourself ]