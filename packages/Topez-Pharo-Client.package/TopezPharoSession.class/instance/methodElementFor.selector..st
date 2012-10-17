api
methodElementFor: behaviorProxy selector: selector
    | theClass theBehavior |
    theBehavior := behaviorProxy asTopezProxy native.
    theClass := theBehavior theNonMetaClass.
    ^ TZMethodElement new
        elementClass: behaviorProxy;
        isMeta: theBehavior isMeta;
        elementClassName: theClass className;
        selector: selector;
        category: (theBehavior organization categoryOfElement: selector asSymbol);
        setSource;
        yourself