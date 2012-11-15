as yet unclassified
messageElementFor: aBehavior selector: selector messagePattern: aString
    | theClass |
    theClass := aBehavior theNonMetaClass.
    ^ self elementCache
        add:
            (TZMessageElement new
                isMeta: aBehavior isMeta;
                elementClass: theClass;
                elementClassName: theClass name;
                elementSuperClassName: theClass superClass name;
                selector: selector;
                category: (aBehavior categoryOfSelector: selector asSymbol);
                messagePattern: aString;
                setSource;
                yourself)