api
instanceSelectors: classProxy
    ^ classProxy native selectors sort
        collect: [ :each | 
            TZMethodElement new
                methodClass: classProxy native;
                selector: each asString;
                yourself ]