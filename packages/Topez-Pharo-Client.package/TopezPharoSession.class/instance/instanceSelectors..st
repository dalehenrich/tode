api
instanceSelectors: classProxy
    ^ classProxy asTopezProxy native selectors sort
        collect: [ :each | 
            TZMethodElement new
                proxyClass: classProxy;
                proxyClassName: classProxy asTopezProxy className;
                selector: each asString;
                setSource;
                yourself ]