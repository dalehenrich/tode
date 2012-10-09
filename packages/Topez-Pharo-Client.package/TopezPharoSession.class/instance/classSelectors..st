api
classSelectors: classProxy
    ^ classProxy native class selectors sort
        collect: [ :each | 
            TZMethodElement new
                proxyClass: classProxy;
                proxyClassName: classProxy className;
                selector: each asString;
                isMeta: true;
                yourself ]