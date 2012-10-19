metacello
messageElementFor: aBehavior selector: selector messagePattern: aString
    | theClass |
    theClass := aBehavior theNonMetaClass.
    ^ TZMessageElement new
        isMeta: aBehavior isMeta;
        elementClass: theClass;
        elementClassName: theClass name;
        selector: selector;
        category: (aBehavior categoryOfSelector: selector asSymbol);
        messagePattern: aString;
        setSource;
        yourself