api
instanceSelectors: classProxy
    ^ classProxy native selectors sort
        collect: [ :each | 
            TZMethodElement new
                proxyClass: classProxy;
                proxyClassName: classProxy className;
                selector: each asString;
                yourself ]