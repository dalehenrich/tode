api
instanceSelectors: classProxy
    | theClass cl |
    cl := classProxy asTopezProxy native.
    theClass := cl theNonMetaClass.
    ^ cl selectors sort
        collect: [ :each | 
            TZMethodElement new
                elementClass: theClass asTopezProxy;
                elementClassName: theClass name;
                selector: each;
                category: (cl organization categoryOfElement: each asSymbol);
                setSource;
                yourself ]