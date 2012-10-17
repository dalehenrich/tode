api
messageElementFor: behavior selector: selector messagePattern: aString
    | theClass |
    theClass := behavior theNonMetaClass.
    ^ TZMessageElement new
        isMeta: behavior isMeta;
        elementClass: theClass asTopezProxy;
        elementClassName: theClass name;
        selector: selector;
        category: (behavior organization categoryOfElement: selector asSymbol);
        messagePattern: aString;
        setSource;
        yourself