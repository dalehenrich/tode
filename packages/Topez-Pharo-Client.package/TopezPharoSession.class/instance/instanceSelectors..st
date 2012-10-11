api
instanceSelectors: classProxy
    ^ classProxy asTopezProxy native selectors sort
        collect: [ :each | 
            TZMethodElement new
                proxyClass: classProxy;
                proxyClassName: classProxy className;
                selector: each asString;
                setSource;
                yourself ]