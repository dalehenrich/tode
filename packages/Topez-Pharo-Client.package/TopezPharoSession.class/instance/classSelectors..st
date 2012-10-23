api
classSelectors: classProxy
    | theClass cl |
    cl := classProxy asTopezProxy native class.
    theClass := cl theNonMetaClass.
    ^ cl selectors sort
        collect: [ :each | 
            TZMethodElement new
                isMeta: true;
                elementClass: theClass asTopezProxy;
                elementClassName: theClass name;
                selector: each;
                category: (cl organization categoryOfElement: each asSymbol);
                setSource;
                yourself ]