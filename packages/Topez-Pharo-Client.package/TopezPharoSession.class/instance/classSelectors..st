api
classSelectors: classProxy
    ^ classProxy native class selectors sort
        collect: [ :each | 
            TZMethodElement new
                methodClass: classProxy native;
                selector: each asString;
                yourself ]