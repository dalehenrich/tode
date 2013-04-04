api
messageElementFor: behaviorProxy selector: selector messagePattern: aString
    | theClass theBehavior |
    theBehavior := behaviorProxy asTopezProxy native.
    theClass := theBehavior theNonMetaClass.
    ^ TZMessageElement new
        isMeta: theBehavior isMeta;
        elementClass: theClass asTopezProxy;
        elementClassName: theClass name;
        selector: selector;
        category: (theBehavior organization categoryOfElement: selector asSymbol);
        messagePattern: aString;
        setSource;
        yourself