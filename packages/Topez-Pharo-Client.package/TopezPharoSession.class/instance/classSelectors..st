api
classSelectors: classProxy
    ^ classProxy native class selectors sort
        collect: [ :each | 
            TZMethodElement new
                isMeta: true;
                proxyClass: classProxy;
                proxyClassName: classProxy className;
                selector: each asString;
                setSource;
                yourself ]